class Location < ApplicationRecord
  has_many :categories
  has_many :vehicles, :through => :categories
  has_many :reservations, :through => :vehicles
end
