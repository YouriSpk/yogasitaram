class PagesController < ApplicationController
  def home
    @home_page = HomePage.last
  end

  def index
    @home_pages = HomePage.all
  end

  def show
    @home_page = HomePage.find(params[:id])
  end
end
