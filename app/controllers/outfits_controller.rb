class OutfitsController < ApplicationController
protect_from_forgery with: :null_session

  # GET /outfits or /outfits.json
  def index
    render json: Outfit.all
  end

  # GET /outfits/1 or /outfits/1.json
  def show
    outfit = Outfit.find_by!(id: params[:id])
    render json: outfit
  end

  # POST /outfits or /outfits.json
  def create
    outfit = Outfit.create!(
      name: params[:name],
      latitude: params[:latitude],
      longitude: params[:longitude],
      user_id: params[:user_id]
    )
    render json: outfit
  end

  # PATCH/PUT /outfits/1 or /outfits/1.json
  def update
    outfit = Outfit.find_by!(id:params[:id])
    # outfit.update!(outfit_params)
    outfit.update(name: params[:name])
    render json: outfit
  end

  # DELETE /outfits/1 or /outfits/1.json
  def destroy
    outfit = Outfit.find_by!(id:params[:id])
    outfit.destroy
    render json: {'delete confirmation':'outfit deleted'}
  end

  private
    def outfit_params
      params.require(:outfit).permit(:name, :latitude, :longitude)
    end
end