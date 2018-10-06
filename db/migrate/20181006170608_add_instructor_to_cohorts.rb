class AddInstructorToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :instructor, :string
  end
end
