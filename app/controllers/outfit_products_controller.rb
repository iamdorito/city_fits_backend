class OutfitProductsController < ApplicationController
protect_from_forgery with: :null_session

  # GET /outfit_products or /outfit_products.json
  def index
   render json: OutfitProduct.all
  end

  # GET /outfit_products/1 or /outfit_products/1.json
  def show
    outfit_product = OutfitProduct.find_by!(id:params[:id])
    render json: outfit_product
  end

  # POST /outfit_products or /outfit_products.json
  def create
    outfit_product = OutfitProduct.create!(
      outfit_id: params[:outfit_id],
      product_id: params[:product_id],
    )
    render json: outfit_product
  end

  # PATCH/PUT /outfit_products/1 or /outfit_products/1.json
  def update
    outfit_product = OutfitProduct.find_by!(id:params[:id])
    outfit_product.update(outfit_id: params[:outfit_id])
    outfit_product.update(product_id: params[:product_id])
    render json: outfit_product
  end

  # DELETE /outfit_products/1 or /outfit_products/1.json
  def destroy
    outfit_product = OutfitProduct.find_by!(id:params[:id])
    outfit_product.destroy
    render json: {'delete confirmation':'outfit_product deleted'}
  end
end