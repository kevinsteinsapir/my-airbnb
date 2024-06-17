class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
end

def end_date_after_start_date
  if end_date <= start_date
    errors.add(:end_date, "must be after the start date")
  end
end
