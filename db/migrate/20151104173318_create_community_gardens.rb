class CreateCommunityGardens < ActiveRecord::Migration
  def change
    create_table :community_gardens do |t|
      t.string :name
      t.integer :borough_id
      t.string :size

      t.timestamps null: false
    end
  end
end
