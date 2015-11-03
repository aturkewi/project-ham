class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
       t.integer :borough_id
      t.integer :labor_force
      t.integer :employed
      t.integer :unemployed
      t.float :unemployment
      t.timestamps null: false
    end
  end
end
