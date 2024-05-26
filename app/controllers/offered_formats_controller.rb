class OfferedFormatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_offered_format, only: %i[ show edit update destroy ]

  # GET /offered_formats or /offered_formats.json
  def index
    @offered_formats = OfferedFormat.all
  end

  # GET /offered_formats/1 or /offered_formats/1.json
  def show
  end

  # GET /offered_formats/new
  def new
    @offered_format = OfferedFormat.new
  end

  # GET /offered_formats/1/edit
  def edit
  end

  # POST /offered_formats or /offered_formats.json
  def create
    @offered_format = OfferedFormat.new(offered_format_params)

    respond_to do |format|
      if @offered_format.save
        format.html { redirect_to offered_format_url(@offered_format), notice: "Offered format was successfully created." }
        format.json { render :show, status: :created, location: @offered_format }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offered_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offered_formats/1 or /offered_formats/1.json
  def update
    respond_to do |format|
      if @offered_format.update(offered_format_params)
        format.html { redirect_to offered_format_url(@offered_format), notice: "Offered format was successfully updated." }
        format.json { render :show, status: :ok, location: @offered_format }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offered_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offered_formats/1 or /offered_formats/1.json
  def destroy
    @offered_format.destroy!

    respond_to do |format|
      format.html { redirect_to offered_formats_url, notice: "Offered format was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offered_format
      @offered_format = OfferedFormat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offered_format_params
      params.require(:offered_format).permit(:title, :description)
    end
end
