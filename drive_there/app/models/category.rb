class Category < ApplicationRecord
  belongs_to :location
  has_many :vehicles
  has_many :reservations, :through => :vehicles

  def neighborhood_openings(start_date, end_date)
    self.listings.select {|l| l.reservations.where("checkout < start_date OR checkin > end_date")}
  end



end
