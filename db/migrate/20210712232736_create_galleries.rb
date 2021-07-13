class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :gallery_name
      t.datetime :date
      t.string :time
      t.string :location
      
    end
  end
end
