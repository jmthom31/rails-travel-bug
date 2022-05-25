class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :country
      t.string :region
      t.string :budget
      t.date :start_date
      t.integer :duration
      t.string :activity_type

      t.timestamps
    end
  end
end
