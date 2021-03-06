class Review < ApplicationRecord
  belongs_to :reservation
  validates :feedback,  presence: true, length: { minimum: 10 }
  validates :rating,  presence: true, :inclusion => { :in => 1..5 }
  validates :reservation_id, presence: true
end
