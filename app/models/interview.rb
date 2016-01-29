class Interview < ActiveRecord::Base
  belongs_to :application

  validates :date, presence: true
end