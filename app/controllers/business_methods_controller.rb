class BusinessMethodsController < ApplicationController
  before_action :find_method, only: [:update, :show, :destroy]
  before_action :correct_admin, only: [:update, :new, :create, :destroy]

  def new
    @met_bus = BusinessMethod.new
  end

  def create
    @met_bus = BusinessMethod.create(method_params)
    if @met_bus.save
      redirect_to root_path
      flash[:notice] = 'Metoda została stworzona'
    else
      render 'new'
      flash[:notice] = 'Nie udało się utworzyć metody'
    end
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

  def destroy
    if @met_bus.delete
      redirect_to root_path
      flash[:notice] = 'Metoda usunięta'
    else
      redirect_to root_path
      flash[:notice] = 'Operacja nieudana'
    end
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
