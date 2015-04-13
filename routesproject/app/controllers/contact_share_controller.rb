class ContactShareController < ApplicationController
  def index
    render json: ContactShare.all
  end

  def show
    render json: ContactShare.find(params[:id])
  end

  def create
    contact_share = ContactShare.new(params[:contact_share].permit(:user_id, :contact_id))
    if contact_share.save
      render json: contact_share
    else
      render(
        json: contact_share.errors.full_mesages, status: :unprocessable_entity
      )
    end
  end

  def update
    contact_share = ContactShare.find(params[:id])
    contact_share.update!(params.require(:contact_share).permit(:user_id, :contact_id)
    render json: contact_share
  end

  def destroy
    contact_share = ContactShare.find(params[:id])
    contact_share.destroy!
    render json: contact_share
  end

end
