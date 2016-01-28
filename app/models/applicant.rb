class Applicant < ActiveRecord::Base
  has_many :applications
  has_many :jobs, through: :applications
  has_many :interviews
end