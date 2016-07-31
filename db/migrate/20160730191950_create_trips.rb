class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :start_date
      t.date :end_date
      t.string :destiny_city_name

      t.timestamps null: false
    end
  end
end
