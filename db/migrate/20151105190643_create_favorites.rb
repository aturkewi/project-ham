class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :hospital_id
      t.integer :flu_id
      t.integer :district_id
      t.integer :job_id
      t.integer :farmers_market_id
      t.integer :community_garden_id

      t.timestamps null: false
    end
  end
end
