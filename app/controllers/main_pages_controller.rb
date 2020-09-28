class MainPagesController < ApplicationController
  def home
    @city = City.all
  end

  def list
    @city_id = params[:city_id]
    @city_name = City.find(@city_id).name 

    # @selected_district = params[][:district_id]
    #, district_id: @selected_district
    @opportunity = Opportunity.where(city_id: @city_id)
  end

  def new
  end
end
