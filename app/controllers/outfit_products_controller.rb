class OutfitProductsController < ApplicationController
  before_action :set_outfit_product, only: %i[ show edit update destroy ]

  # GET /outfit_products or /outfit_products.json
  def index
    @outfit_products = OutfitProduct.all
  end

  # GET /outfit_products/1 or /outfit_products/1.json
  def show
  end

  # GET /outfit_products/new
  def new
    @outfit_product = OutfitProduct.new
  end

  # GET /outfit_products/1/edit
  def edit
  end

  # POST /outfit_products or /outfit_products.json
  def create
    @outfit_product = OutfitProduct.new(outfit_product_params)

    respond_to do |format|
      if @outfit_product.save
        format.html { redirect_to outfit_product_url(@outfit_product), notice: "Outfit product was successfully created." }
        format.json { render :show, status: :created, location: @outfit_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @outfit_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outfit_products/1 or /outfit_products/1.json
  def update
    respond_to do |format|
      if @outfit_product.update(outfit_product_params)
        format.html { redirect_to outfit_product_url(@outfit_product), notice: "Outfit product was successfully updated." }
        format.json { render :show, status: :ok, location: @outfit_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @outfit_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outfit_products/1 or /outfit_products/1.json
  def destroy
    @outfit_product.destroy

    respond_to do |format|
      format.html { redirect_to outfit_products_url, notice: "Outfit product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outfit_product
      @outfit_product = OutfitProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def outfit_product_params
      params.require(:outfit_product).permit(:outfit_id, :product_id)
    end
end
