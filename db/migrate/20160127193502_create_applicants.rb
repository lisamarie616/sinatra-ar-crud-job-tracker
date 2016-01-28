class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
    end
  end
end
