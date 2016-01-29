class Contact < ActiveRecord::Base
  belongs_to :company
  has_many :application_contacts
  has_many :applications, through: :application_contacts

  validates :first_name, presence: true
end