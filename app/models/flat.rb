class Flat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
