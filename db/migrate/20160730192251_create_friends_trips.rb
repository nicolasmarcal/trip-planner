class CreateFriendsTrips < ActiveRecord::Migration
  def change
    create_table :friends_trips do |t|
      t.integer :friend_id
      t.integer :trip_id
    end
  end
end
