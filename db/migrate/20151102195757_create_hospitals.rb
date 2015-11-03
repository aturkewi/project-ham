class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.integer :borough_id
      t.string :name
      t.string :hospital_type

      t.timestamps null: false
    end
  end
end
