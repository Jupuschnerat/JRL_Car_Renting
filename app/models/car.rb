class Car < ApplicationRecord

  geocoded_by :city

  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  # validates :plate, uniqueness: true, lenght: {is: 7}, presence: true
  validates :model, :city, :price, :photo, presence: true

  after_validation :geocode, if: :will_save_change_to_address?
end
