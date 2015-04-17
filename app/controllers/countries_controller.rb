class CountriesController < ApplicationController
	
  before_action :fetch_country, only:[:show, :edit, :update, :destroy]
	
  before_action :authenticate_authentication!
	
  def index
	  @countries = Country.all
  end

  def show
	
  end

  def new
	  @country = Country.new
  end

  def create
  	  @country = Country.new(country_params)
 
  	  if @country.save
   	 	redirect_to @country
  	  else
    	render 'new'
  	  end
  end

  def destroy

      @country.destroy
      redirect_to countries_path
  end
 
  def edit

  end

  def update
 
  	  if @country.update(country_params)
    	redirect_to @country
  	  else
    	render 'edit'
  	  end
  end
 
  private
  	  def country_params
    	params.require(:country).permit(:name)
 	  end

 	  def fetch_country
        @country = Country.find(params[:id]) 
      end
  end
