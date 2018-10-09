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
        scope.where(published: true)
      end
    end
  end

  def update?
    admin_types.include?(user.type)
  end

  def admin?
    admin_types.include?(user.type)
  end
end