class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Dziękujemy za wiadomość. Skontaktujemy się z Tobą najszybciej jak to tylko możliwe!'
      render 'static_pages/home'
    else
      flash.now[:error] = 'Nie można wysłać wiadomości.'
      render :new
    end
  end
end