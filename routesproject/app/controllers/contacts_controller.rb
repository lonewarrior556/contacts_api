class ContactsController < ApplicationController
  def index
    render text: "We're in the index action on contactcontroller"
  end

  def create
    contact = Contact.new(params[:contact].permit(:email, :user_id, :name))
    if user.save
      render json: contact
    else
      render(
        json: contact.errors.full_mesages, status: :unprocessable_entity
      )
    end
  end
end
