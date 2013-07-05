class Car < ActiveRecord::Base

	belongs_to :body_type
	belongs_to :engine_type

  attr_accessible :car_type, :image, :mpg, :mph, :name, :price, :engine_type_id, :body_type_id
end
