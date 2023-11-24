class Car < ApplicationRecord
  include PgSearch::Model
  geocoded_by :city

  belongs_to :user
  has_many :bookings
  has_one_attached :photo
    # validates :plate, uniqueness: true, lenght: {is: 7}, presence: true
  validates :model, :city, :price, presence: true

  after_validation :geocode, if: :will_save_change_to_city?

  pg_search_scope :search_by_city_model,
    against: [:city, :model],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
