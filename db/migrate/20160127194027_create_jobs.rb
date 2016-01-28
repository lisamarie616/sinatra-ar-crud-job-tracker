class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.integer :salary
      t.string :link
      t.integer :company_id
    end
  end
end
