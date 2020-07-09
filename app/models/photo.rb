class Photo < ApplicationRecord
  validates :name, length: { minimum: 1 }
  validates :price, length: { minimum: 1 }
end


