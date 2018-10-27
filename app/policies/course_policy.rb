class CoursePolicy < ApplicationPolicy
  
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      else
      end
    end
  end

  def update?
    return true if admin_types.include?(user.type)
  end

  private

  def user_or_admin
    record.user_id == admin?
  end

  def admin?
    admin_types.include?(user.type)
  end
end