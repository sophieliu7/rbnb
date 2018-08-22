class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tools
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
