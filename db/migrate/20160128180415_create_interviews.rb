class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.datetime :date
      t.datetime :thank_yous_sent
      t.integer :application_id
    end
  end
end
