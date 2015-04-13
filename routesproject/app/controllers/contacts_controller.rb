class ContactsController < ApplicationController
  def index
    render json: Contact.all
  end

  def show
    render json: Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update(params.require(:contact).permit(:name, :email, :user_id))
      render json: contact
    else
      render(
        json: contact.errors.full_mesages, status: :unprocessable_entity
      )
    end
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

  def destroy
    temp = Contact.find(params[:id])
    if temp.destroy
      render json: temp
    else
      render json: contact.errors.full_mesages, status: :unprocessable_entity
    end
  end
end
