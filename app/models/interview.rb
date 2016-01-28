class Interview < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :job
  has_many :interview_contacts
  has_many :contacts, through: :interview_contacts
  has_many :interview_notes
end