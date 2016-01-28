class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :status
      t.string :cover_letter
      t.string :resume
      t.datetime :follow_up_date
      t.integer :applicant_id
      t.integer :job_id
      t.timestamps
    end
  end
end
