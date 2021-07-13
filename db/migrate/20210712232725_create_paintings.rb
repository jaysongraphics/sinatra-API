class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :painting_name
      t.string :image, null: false
      t.string :artist_name
      t.string :country_birth
      t.string :birthday
      t.integer :price
      t.integer :gallery_id
      t.integer :buyer_id
    end
  end
end
