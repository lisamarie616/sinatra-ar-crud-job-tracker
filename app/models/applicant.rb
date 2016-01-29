class Applicant < ActiveRecord::Base
  has_many :applications
  has_many :jobs, through: :applications

  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 7 }
end