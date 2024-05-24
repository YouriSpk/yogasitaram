class HomePagesController < ApplicationController
  before_action :set_home_page, only: [:show, :edit, :update, :destroy]

  # GET /home_pages/1
  def show
  end

  # GET /home_pages/new
  def new
    @home_page = HomePage.new
  end

  # POST /home_pages
  def create
    @home_page = HomePage.new(home_page_params)

    if @home_page.save
      redirect_to @home_page, notice: 'Home page content was successfully created.'
    else
      render :new
    end
  end

  # GET /home_pages/1/edit
  def edit
  end

  # PATCH/PUT /home_pages/1
  def update
    if @home_page.update(home_page_params)
      redirect_to @home_page, notice: 'Home page content was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /home_pages/1
  def destroy
    @home_page.destroy
    redirect_to home_pages_url, notice: 'Home page content was successfully destroyed.'
  end

  private

  def set_home_page
    @home_page = HomePage.find(params[:id])
  end

  def home_page_params
    params.require(:home_page).permit(:title, :content)
  end
end
