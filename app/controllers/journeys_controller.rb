class JourneysController < ApplicationController

	load_and_authorize_resource

	def index
		@journeys = Journey.includes(:from_city, :to_city, :travel_mode).all
	end

	def show

	end

	def edit

	end

	def update
		if @journey.update(journey_params)
    	redirect_to @journey
  	else
    	render 'edit'
  	end
	end

	def new
		@journey = Journey.new
	end

	def create
		@journey = Journey.new(journey_params)
 		if @journey.save
   	 	redirect_to @journey
  	else
    	render 'new'
    end
	end

	def destroy
		@journey.destroy
 		redirect_to journeys_path
	end

	private

	def journey_params
		params.require(:journey).permit(:from_city_id, :to_city_id, :start_date, :end_date, :travel_mode_id, :km)
	end
end

