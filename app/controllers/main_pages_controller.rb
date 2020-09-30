class MainPagesController < ApplicationController
  def home
    @city = City.all
  end
end
