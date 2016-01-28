class CreateApplicationContacts < ActiveRecord::Migration
  def change
    create_table :application_contacts do |t|
      t.integer :application_id
      t.integer :contact_id
    end
  end
end
