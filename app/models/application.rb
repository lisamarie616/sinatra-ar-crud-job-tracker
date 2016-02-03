class Application < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :company
  has_many :interviews
  has_many :application_contacts
  has_many :contacts, through: :application_contacts
  has_many :notes

  validates :title, presence: true
end