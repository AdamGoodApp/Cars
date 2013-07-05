class CarsController < ApplicationController

	def index
		@cars = Car.all
	end

	def new
    	@car = Car.new
      @body_types = BodyType.all
      @engine_types = EngineType.all
  	end

  	def create
    	@car = Car.new(params[:car])
    	@car.save
    	redirect_to @car
  	end

  	def show
    @car = Car.find(params[:id])
  	end

  	def edit
    @car = Car.find(params[:id])
    @body_types = BodyType.all
    @engine_types = EngineType.all
  	end

  	def update
    @car = Car.find(params[:id])
    @car.update_attributes(params[:car])
    redirect_to @car
  	end

  	def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  	end




end