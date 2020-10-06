class OpportunitiesController < ApplicationController
  def new  
    @opportunity = Opportunity.new(city_id: params[:city_id])
  end

  def show
    redirect_to :controller => 'main_pages', :action => 'home' 
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    if @opportunity.save
      redirect_to @opportunity
    else
      render 'new', location: new_path
    end
  end

  def edit
    @opportunity = Opportunity.find(params[:id])
    @city_id = params[:city_id]
  end

  def update
    @opportunity = Opportunity.find(params[:id])
    if @opportunity.update(opportunity_params)
      redirect_to :controller => 'main_pages', :action => 'home'
    else
      render 'edit'
    end
  end

  def destroy
    Opportunity.find(params[:id]).destroy
    redirect_to :controller => 'main_pages', :action => 'home'
  end

  private

    def opportunity_params
      params.require(:opportunity).permit(:address, :size, :rooms, :floor, :listing_price, :estimated_price, :description, :city_id, :district_id)
    end
end
