class Trip < ApplicationRecord
  validates :country, :region, :budget, :start_date, :activity_type, :duration, presence: true

  belongs_to :user
end
