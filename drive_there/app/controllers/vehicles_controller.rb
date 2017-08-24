class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.top_five_rented_vehicles_at_drive_there
  end

end
