class Tool < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :name, presence: true

  validates :price_per_day, presence: true
  validates :price_per_day, numericality: { greater_than_or_equal_to: 0 }

  # price_regex = /^\d+(\.\d{2})?$/
  # validates :price_per_day, :format => {  :with => price_regex  }
  # validates :price_per_day, format: { with: regex , message: "only 2 decimals"}

  validates :price_per_day, :presence => true

  validates :description, presence: true
  # validates :place, presence: true
  validates :user, presence: true


  include PgSearch

  pg_search_scope :global_search,
      against: [ :name, :description ],
      associated_against: {
        user: [ :name, :first_name, :last_name, :address ]
      },
      using: {
        tsearch: { prefix: true }
      }
end
