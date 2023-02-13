class CreateOutfitProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :outfit_products do |t|
      t.integer :outfit_id
      t.integer :product_id

      
    end
  end
end
