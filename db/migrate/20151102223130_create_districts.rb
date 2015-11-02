class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer :borough_id
      t.float :attendance
      t.string :grade
      t.integer :sat
    end
  end
end
