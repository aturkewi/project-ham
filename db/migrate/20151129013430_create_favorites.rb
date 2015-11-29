class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id

      t.integer :favoritable_id
      t.string :favoritable_type

      # t.belongs_to :favoriteable, polymorphic: true
      # This line is the same as the two above

      t.timestamps null: false
    end
    add_index :favorites, [:favoritable_id, :favoritable_type]
  end
end
