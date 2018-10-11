class CreateCohortUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :cohort_users do |t|
      t.references :cohort, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
