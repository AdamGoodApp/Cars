class EngineType < ActiveRecord::Base

	has_many :cars

  attr_accessible :fuel, :description
end
