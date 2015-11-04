class CreateFarmersMarkets < ActiveRecord::Migration
  def change
    create_table :farmers_markets do |t|
      t.string :name
      t.integer :borough_id
      t.string :day

      t.timestamps null: false
    end
  end
end
