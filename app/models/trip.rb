class Trip < ActiveRecord::Base
  has_and_belongs_to_many :friends
  validates_presence_of :start_date, :end_date, :destiny_city_name

  def add_friends(friends_ids)
    self.friends = Friend.where(id: friends_ids)
    save
  end
end
