class ContactShareController < ApplicationController
  def index
    render text: "We're in the index contactshare"
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
end
