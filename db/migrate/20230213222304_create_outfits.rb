class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.string :name
      t.integer :latitude
      t.integer :longitude
      t.integer :user_id
      
    end
  end
end
