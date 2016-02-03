class ApplicationNote < ActiveRecord::Base
  belongs_to :application

  validates :notes, presence: true
end