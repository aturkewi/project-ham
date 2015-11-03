class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer :number
      t.float :attendance
      t.integer :borough_id

      t.timestamps null: false
    end
  end
end
