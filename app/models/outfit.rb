class Outfit < ApplicationRecord
    has_many :outfit_products
    has_many :products, through: :outfit_products
end
