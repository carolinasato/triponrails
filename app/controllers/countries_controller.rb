class CountriesController < ApplicationController
	def index
		@countries = Country.all
	end
	def show
		@country = Country.find(params[:id])
	end
	def edit 
		@country = Country.find(params[:id])
    end
    def update
    	@country = Country.find(params[:id])
    	@country.update_attributes(country_attributes)
    	redirect_to :action => :show
    end
    def country_attributes
    	params.require(:country).permit!
    end

end
