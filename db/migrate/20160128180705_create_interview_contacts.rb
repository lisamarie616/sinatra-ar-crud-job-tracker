class CreateInterviewContacts < ActiveRecord::Migration
  def change
    create_table :interview_contacts do |t|
      t.integer :interview_id
      t.integer :contact_id
    end
  end
end
