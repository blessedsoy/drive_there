class Vehicle < ApplicationRecord
  belongs_to :category
  has_many :reservations
  has_many :users, :through => :reservations

  # this method returns an array of the top five of the most rented out vehicles during the given period.(defalut value is one year)
  def self.top_five_rented_vehicles_at_drive_there(start_period=Date.today-365, end_period=Date.today)

    self.how_many_reservations_per_vehicle(start_period, end_period).sort_by{|k,v| -v["total_reservations"]}[0..4]
  end


  # this method retuns a nested hash of vehicles that are unique by the name of make/model as keys and the total number of reservations and the category of a vehicle as values for each vehicle.
  def self.how_many_reservations_per_vehicle(start_period, end_period)
    result = {}
    self.vehicles_rented_during(start_period, end_period).select do |e|
      temp = Category.find(e.category_id)
      result[e.make_model] ? result[e.make_model]["total_reservations"] += e.reservations.size : result[e.make_model] = {"total_reservations" => e.reservations.size, "vehicle_category" => temp.name}
    end
    result
  end


  # this method selects all of rented vehicles during the given period.
  def self.vehicles_rented_during(start_period, end_period)
    self.select {|l| l.reservations.where("end_date <= end_period AND start_date >= start_period")}
  end


end
