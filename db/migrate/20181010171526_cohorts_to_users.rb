class CohortsToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :CohortsToUsers do |t|
      t.string :user_id
      t.string :cohort_id

      t.timestamps
    end
  end
end
