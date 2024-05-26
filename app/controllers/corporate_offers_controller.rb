class CorporateOffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_corporate_offer, only: %i[ show edit update destroy ]

  # GET /corporate_offers or /corporate_offers.json
  def index
    @corporate_offers = CorporateOffer.all
  end

  # GET /corporate_offers/1 or /corporate_offers/1.json
  def show
  end

  # GET /corporate_offers/new
  def new
    @corporate_offer = CorporateOffer.new
  end

  # GET /corporate_offers/1/edit
  def edit
  end

  # POST /corporate_offers or /corporate_offers.json
  def create
    @corporate_offer = CorporateOffer.new(corporate_offer_params)

    respond_to do |format|
      if @corporate_offer.save
        format.html { redirect_to corporate_offer_url(@corporate_offer), notice: "Corporate offer was successfully created." }
        format.json { render :show, status: :created, location: @corporate_offer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @corporate_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporate_offers/1 or /corporate_offers/1.json
  def update
    respond_to do |format|
      if @corporate_offer.update(corporate_offer_params)
        format.html { redirect_to corporate_offer_url(@corporate_offer), notice: "Corporate offer was successfully updated." }
        format.json { render :show, status: :ok, location: @corporate_offer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @corporate_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporate_offers/1 or /corporate_offers/1.json
  def destroy
    @corporate_offer.destroy!

    respond_to do |format|
      format.html { redirect_to corporate_offers_url, notice: "Corporate offer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporate_offer
      @corporate_offer = CorporateOffer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def corporate_offer_params
      params.require(:corporate_offer).permit(:title, :description)
    end
end
