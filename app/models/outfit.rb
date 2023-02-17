class Outfit < ApplicationRecord
    has_many :outfit_products
    has_many :products, through: :outfit_products

    validates :name, presence: true
    validates :latitude, numericality: { only_float: true }
    validates :longitude, numericality: { only_float: true }
end
