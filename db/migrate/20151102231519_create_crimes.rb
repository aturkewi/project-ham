class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.integer :borough_id
      t.integer :murder
      t.integer :rape
      t.integer :robbery
      t.integer :assault
      t.integer :burglary
      t.integer :grand_larceny
      t.integer :grand_larceny_auto

      t.timestamps null: false
    end
  end
end
