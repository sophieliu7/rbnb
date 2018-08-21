class Reservation < ApplicationRecord
  belongs_to :tool
  belongs_to :user

  validates :start_date, presence: true
  validates :duration, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :duration, numericality: { greater_than_or_equal_to: 1 }
end
