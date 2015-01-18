class CompanyDataController < ApplicationController
  before_action :correct_admin

  def edit
    @com_data = CompanyDatum.find(1)
  end

  def update
    @com_data = CompanyDatum.find(1)
    if @com_data.update_attributes(company_params)
      flash[:notice]= 'Dokonano edycji'
      redirect_to request.referrer
    else
      render 'edit'
      flash[:notice]= 'Nieudana próba edycji'
    end
  end

  private

  def company_params
    params.require(:company_datum).permit(:title, :content,
      :met_title, :met_description, :met_keywords, :name, :address, :email, :phone, :mob_phone)
  end
  
end
