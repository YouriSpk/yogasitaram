class YogaStylesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_yoga_style, only: %i[ show edit update destroy ]


  # GET /yoga_styles or /yoga_styles.json
  def index
    @yoga_styles = YogaStyle.all
  end

  # GET /yoga_styles/1 or /yoga_styles/1.json
  def show
  end

  # GET /yoga_styles/new
  def new
    @yoga_style = YogaStyle.new
  end

  # GET /yoga_styles/1/edit
  def edit
  end

  # POST /yoga_styles or /yoga_styles.json
  def create
    @yoga_style = YogaStyle.new(yoga_style_params)

    respond_to do |format|
      if @yoga_style.save
        format.html { redirect_to yoga_style_url(@yoga_style), notice: "Yoga style was successfully created." }
        format.json { render :show, status: :created, location: @yoga_style }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @yoga_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yoga_styles/1 or /yoga_styles/1.json
  def update
    respond_to do |format|
      if @yoga_style.update(yoga_style_params)
        format.html { redirect_to yoga_style_url(@yoga_style), notice: "Yoga style was successfully updated." }
        format.json { render :show, status: :ok, location: @yoga_style }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @yoga_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yoga_styles/1 or /yoga_styles/1.json
  def destroy
    @yoga_style.destroy!

    respond_to do |format|
      format.html { redirect_to yoga_styles_url, notice: "Yoga style was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yoga_style
      @yoga_style = YogaStyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yoga_style_params
      params.require(:yoga_style).permit(:title, :description)
    end
end
