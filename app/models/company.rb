class Company < ActiveRecord::Base
  has_many :jobs
  has_many :contacts

  validates :name, presence: true  
end