class Friend < ActiveRecord::Base
  has_and_belongs_to_many :trips

  validates_presence_of :name, :zip_code, :address, :number,
                        :neighborhood, :city, :state
end
