class Applicant < ActiveRecord::Base
  has_many :applications
  has_many :jobs, through: :applications

  validates :username, :password, :first_name, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 7 }
end