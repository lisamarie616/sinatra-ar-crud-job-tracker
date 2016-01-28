class Contact < ActiveRecord::Base
  belongs_to :company
  has_many :application_contacts
  has_many :applications, through: :application_contacts
  has_many :interview_contacts
  has_many :interviews, through: :interview_contacts
end