class CreateInterviewNotes < ActiveRecord::Migration
  def change
    create_table :interview_notes do |t|
      t.datetime :date
      t.text :note
      t.integer :interview_id
    end
  end
end
