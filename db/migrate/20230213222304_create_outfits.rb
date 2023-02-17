class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :user_id
      
    end
  end
end
