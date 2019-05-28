class Meeting < ApplicationRecord

  has_many :schedules
  has_many :speakers, through: :schedules

  validates :title, :agenda, :location, :time, presence: true, length: {min: 3}

end
