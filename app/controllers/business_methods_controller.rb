class BusinessMethodsController < ApplicationController
  before_action :find_method, only: [:update, :show]
  before_action :correct_admin, only: [:update]

  def new
    @met_bus = BusinessMethod.new
  end

  def update
    if @met_bus.update_attributes(method_params)
      flash[:notice]= 'Zaktualizowano dane'
      redirect_to request.referrer
    else
      flash[:notice]= 'Nie udało się zaktualizować danych'
      render 'show'
    end
  end

  def show
  end

  def find_method
    @met_bus = BusinessMethod.find(params[:id])
  end

  private

  def method_params
    params.require(:business_method).permit(:title, :content,
                                    :met_title, :met_description, :met_keywords)
  end

end
