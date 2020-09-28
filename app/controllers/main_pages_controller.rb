class MainPagesController < ApplicationController
  def home
    print 42
    @city = City.all
  end

  def list
    @opportunity = Opportunity.all
    
    if(params.has_key?(:city_id))
      @city_id = params[:city_id]
      @city_name = City.find(@city_id).name
    end  
  end

  def new
  end
end
