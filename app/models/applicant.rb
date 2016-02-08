class Applicant < ActiveRecord::Base
  has_many :applications
  has_many :interviews, through: :applications
  has_many :companies, through: :applications

  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 7 }

end