class DistrictsController < ApplicationController
  def show
    @city_id = params[:city_id]
    @city_name = City.find(@city_id).name 
    @district_id = params[:district_id]
    if @district_id.nil?
      @opportunity = Opportunity.where(city_id: @city_id)
    else
      @opportunity = Opportunity.where(city_id: @city_id, district_id: @district_id)
    end
  end
end
