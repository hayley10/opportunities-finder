class MainPagesController < ApplicationController
  def home
  end

  def list
    @opportunity = Opportunity.all
  end

  def new
  end
end
