class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: "Obrigado, em breve entaremos em contato!!"
    else
      render :new
    end
  end
end
