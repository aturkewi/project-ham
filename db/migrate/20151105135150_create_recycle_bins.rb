class CreateRecycleBins < ActiveRecord::Migration
  def change
    create_table :recycle_bins do |t|

      t.timestamps null: false
    end
  end
end
