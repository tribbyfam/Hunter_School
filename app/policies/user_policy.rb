class UserPolicy < ApplicationPolicy
  
  def update?
    return true if admin_types.include?(user.type)
  end

end