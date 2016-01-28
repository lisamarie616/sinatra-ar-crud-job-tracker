class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :role
      t.datetime :follow_up_date
      t.integer :company_id
    end
  end
end
