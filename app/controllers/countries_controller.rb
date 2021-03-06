class CountriesController < ApplicationController

  load_and_authorize_resource
  skip_load_resource :only  => [:create]

  def index
    @countries = Country.paginate(:page => params[:page], :per_page => 5)
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
  end
