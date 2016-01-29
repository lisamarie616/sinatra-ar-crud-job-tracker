class Application < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :job
  has_many :interviews
  has_many :application_contacts
  has_many :contacts, through: :application_contacts
  has_many :application_notes

  validates :status, presence: true
end