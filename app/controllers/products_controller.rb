class ProductsController < ApplicationController
protect_from_forgery with: :null_session

  # GET /products or /products.json
  def index
    render json: Product.all
  end

  # GET /products/1 or /products/1.json
  def show
    # ella added this. Not sure if necessary
    product = Product.find_by(id: params[:id])
    render json: product
  end

  # POST /products or /products.json
  def create
    product = Product.create!(
      name: params[:name],
      category: params[:category],
      style: params[:style],
      link: params[:link]
    )
    render json: product
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    product = Product.find_by!(id:params[:id])
    product.update(name: params[:name])
    product.update(category: params[:category])
    product.update(style: params[:style])
    product.update(link: params[:link])
    rend json: product
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    product = Product.find_by!(id: params[:id])
    product.destroy
    render json: {'delete confirmation':'product deleted'}
  end
end