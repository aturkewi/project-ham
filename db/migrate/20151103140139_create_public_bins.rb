class CreatePublicBins < ActiveRecord::Migration
  def change
    create_table :public_bins do |t|
      t.integer :borough_id
      t.timestamps null: false
    end
  end
end
