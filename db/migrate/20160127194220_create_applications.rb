class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :title
      t.string :location
      t.string :salary
      t.string :link
      t.datetime :submission_date
      t.string :cover_letter
      t.string :resume
      t.datetime :follow_up_date
      t.integer :applicant_id
      t.integer :company_id
      t.timestamps
    end
  end
end
