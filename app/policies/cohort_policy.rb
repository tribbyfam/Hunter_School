class CoursePolicy < ApplicationPolicy
  def update?
    record.user_id == Admin.admin_types.include?(current_user.try(:type))
  end
end