class Speaker < ApplicationRecord

  has_many :schedules
  has_many :meetings, through: :schedules 

  validates :first_name, :last_name, presence: true 

  validates :email, presence:true, uniqueness:true, confirmation: { case_sensitive: false}, format: {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "is in the wrong format"}

end
