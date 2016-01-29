class CreateApplicationNotes < ActiveRecord::Migration
  def change
    create_table :application_notes do |t|
      t.datetime :date
      t.text :notes
      t.integer :application_id
    end
  end
end
