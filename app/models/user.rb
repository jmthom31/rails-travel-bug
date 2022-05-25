class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :first_name, :last_name, :dob, presence: true

  has_many :trips
  has_many :requests
  has_many :itineraries
  has_one :inspiration_boards
end
