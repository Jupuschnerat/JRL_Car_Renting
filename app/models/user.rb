class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_cars, dependent: :destroy, class_name: 'Cars'
  has_many :bookings
  # has_many :reviews
  has_many :rented_cars, through: :bookings, source: :cars

  # Validate password
  validates_length_of :password, in: 6..20, on: :create

end
