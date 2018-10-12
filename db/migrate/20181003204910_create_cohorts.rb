class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.bigint :course_id
      t.bigint :user_id
      t.string :instructor
      t.timestamps
    end
  end
end
