class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_mesages, status: :unprocessable_entity
      )
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(params.require(:user).permit(:username))
      render json: user
    else
      render(
        json: user.errors.full_mesages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    temp = User.find(params[:id])
    if temp.destroy
      render json: temp
    else
      render json: user.errors.full_messages, status: :not_found
    end
  end


  private
  def user_params
    params[:user].permit(:username)
  end




end
