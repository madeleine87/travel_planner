class CitiesController < ApplicationController

  load_and_authorize_resource
  skip_load_resource :only  => [:create]

  def index
		@cities = City.includes(:country).all
	end

	def show

	end

	def new
		@city = City.new
	end

	def create
		@city = City.new(city_params)

		if @city.save
 	 		redirect_to @city
		else
  		render 'new'
		end
  end

  def edit

  end

  def update
  	if @city.update(city_params)
  		redirect_to @city
  	else
  		render 'edit'
  	end
  end

  def destroy

    @city.destroy
    redirect_to cities_path
  end

  private
  	def city_params
    	params.require(:city).permit(:name, :country_id)
 	  end
  end
