class DeleteUserIdFromCourses < ActiveRecord::Migration[5.2]
  def change

    remove_column :courses, :user_id, :bigint
  end
end
