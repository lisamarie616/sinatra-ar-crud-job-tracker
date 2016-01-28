class InterviewContact < ActiveRecord::Base
  belongs_to :interview
  belongs_to :contact
end