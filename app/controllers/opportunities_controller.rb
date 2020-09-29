class OpportunitiesController < ApplicationController
  def new
    @opportunity = Opportunity.new
  end

  def show
    redirect_to :controller => 'main_pages', :action => 'home' 
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    if @opportunity.save
      redirect_to @opportunity
    else
      render 'new'
    end
  end

  private

    def opportunity_params
      params.require(:opportunity).permit(:address, :size, :rooms, :floor, :listing_price, :estimated_price, :description, :city_id, :district_id)
    end
end
