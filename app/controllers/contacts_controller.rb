class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @com_data = CompanyDatum.find(1)
  end

  def create
    @com_data = CompanyDatum.find(1)
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Dziękujemy za wiadomość. Skontaktujemy się z Tobą najszybciej jak to tylko możliwe.'
      redirect_to root_path
    else
      flash[:notice] = 'Nie można wysłać wiadomości.'
      render :new
    end
  end
end