class AddSubmissionDateToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :submission_date, :datetime
  end
end
