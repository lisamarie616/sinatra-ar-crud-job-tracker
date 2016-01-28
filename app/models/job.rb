class Job < ActiveRecord::Base
  has_many :applications
  has_many :applicants, through: :applications
  has_many :interviews
  belongs_to :company
end