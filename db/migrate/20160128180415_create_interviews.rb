class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.datetime :date
      t.datetime :time
      t.datetime :thank_yous_sent
      t.integer :applicant_id
      t.integer :job_id
    end
  end
end
