class TravelModesController < ApplicationController

	load_and_authorize_resource
  skip_load_resource :only  => [:create]

	def index
		@travel_modes = TravelMode.paginate(:page => params[:page], :per_page => 5)
	end

	def new
		@travel_mode = TravelMode.new
	end

	def create
		@travel_mode = TravelMode.new(travel_mode_params)

		if @travel_mode.save
 	 		redirect_to @travel_mode
		else
  		render 'new'
  	end
	end

	def show

	end

	def edit

	end

	def update

		if @travel_mode.update(travel_mode_params)
    	redirect_to @travel_mode
  	else
    	render 'edit'
    end
	end

	def destroy
		@travel_mode.destroy
 		redirect_to travel_modes_path
	end

	private

	def travel_mode_params
		params.require(:travel_mode).permit(:name)
	end
end
