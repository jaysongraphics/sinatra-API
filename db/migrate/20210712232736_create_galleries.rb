class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :gallery_name
      t.string :date
      t.string :hours
      t.string :location
      t.string :description
      t.string :image
      t.string :website
      
    end
  end
end
