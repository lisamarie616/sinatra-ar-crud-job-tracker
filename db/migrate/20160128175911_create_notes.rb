class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.datetime :date
      t.text :notes
      t.integer :application_id
    end
  end
end
