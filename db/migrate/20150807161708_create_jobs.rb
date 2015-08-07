class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :name
    	t.text :tech_number
    	t.text :account_number
    	t.text :points
    	t.date :date
    	t.text :finding_code

      t.timestamps null: false
    end
  end
end
