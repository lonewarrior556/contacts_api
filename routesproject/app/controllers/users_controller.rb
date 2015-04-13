class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.new(params[:user].permit(:username))
    if user.save
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





end
