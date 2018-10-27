class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.bigint :course_id
      t.references :user, foreign_key: true
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
