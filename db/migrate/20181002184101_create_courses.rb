class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :hours
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
