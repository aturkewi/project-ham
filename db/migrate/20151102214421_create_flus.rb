class CreateFlus < ActiveRecord::Migration
  def change
    create_table :flus do |t|
      t.string :name
      t.string :borough_id

      t.timestamps null: false
    end
  end
end
