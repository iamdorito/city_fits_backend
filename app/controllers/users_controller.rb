class UsersController < ApplicationController
protect_from_forgery with: :null_session

  # GET /users or /users.json
  def index
    render json: User.all
  end

  # GET /users/1 or /users/1.json
  def show
    user = User.find_by!(id:params[:id])
    render json: user
  end

  # POST /users or /users.json
  def create
    user = User.create!(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    render json: user
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    user = User.find_by!(id:params[:id])
    user.update(name: params[:name])
    user.update(username: params[:username])
    user.update(email: params[:email])
    user.update(password_digest: params[:password_digest])
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    user = User.find_by!(id:params[:id])
    user.destroy
    render json: {'delete confirmation':'user deleted'}
  end
end
