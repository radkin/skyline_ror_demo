class Product < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :category, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :price, presence: true, length: { minimum: 3 }
end
