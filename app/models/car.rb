class Car < ApplicationRecord
  has_many :users

  validates :plate, uniqueness: true, lenght: {is: 7}, presence: true
  validates :model, presence: true
  validates :city, presence: true
  validates :price, presence: true
end
