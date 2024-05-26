class PreNatalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pre_natal, only: %i[ show edit update destroy ]

  # GET /pre_natals or /pre_natals.json
  def index
    @pre_natals = PreNatal.all
  end

  # GET /pre_natals/1 or /pre_natals/1.json
  def show
  end

  # GET /pre_natals/new
  def new
    @pre_natal = PreNatal.new
  end

  # GET /pre_natals/1/edit
  def edit
  end

  # POST /pre_natals or /pre_natals.json
  def create
    @pre_natal = PreNatal.new(pre_natal_params)

    respond_to do |format|
      if @pre_natal.save
        format.html { redirect_to pre_natals_path, notice: "Pre natal was successfully created." }
        format.json { render :show, status: :created, location: @pre_natal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pre_natal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_natals/1 or /pre_natals/1.json
  def update
    respond_to do |format|
      if @pre_natal.update(pre_natal_params)
        format.html { redirect_to pre_natals_path, notice: "Pre natal was successfully updated." }
        format.json { render :show, status: :ok, location: @pre_natal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pre_natal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_natals/1 or /pre_natals/1.json
  def destroy
    @pre_natal.destroy!

    respond_to do |format|
      format.html { redirect_to pre_natals_url, notice: "Pre natal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_natal
      @pre_natal = PreNatal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pre_natal_params
      params.require(:pre_natal).permit(:title, :description)
    end
end
