class Reservation < ApplicationRecord
  belongs_to :tool
  belongs_to :user

  validates :start_date, presence: true
  validates :duration, presence: true, numericality: { only_integer: true }
  # validates :total_price, presence: true
end
