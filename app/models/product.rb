class Product < ApplicationRecord
    has_many :outfit_products
    has_many :outfits, through: :outfit_products
end
