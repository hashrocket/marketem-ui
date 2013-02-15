class ContactsController < ApplicationController

  expose(:contacts)
  expose(:contact)

  def create
    if contact.save
      redirect_to :contacts, notice: "Yay! You've created a contact! I'm so happy for you!"
    else
      render :new
    end
  end

end
