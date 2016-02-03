class Company < ActiveRecord::Base
  has_many :applications
  has_many :applicants, through: :applications
  has_many :contacts

  validates :name, presence: true  
end