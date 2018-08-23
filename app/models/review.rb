class Review < ApplicationRecord
  belongs_to :reservation
  validates: :feedback,  :presence :true
  validates: :rating, :inclusion => { :in => 1..5 }, :presence :true
  validates: :reservation_id, :presence :true
end
