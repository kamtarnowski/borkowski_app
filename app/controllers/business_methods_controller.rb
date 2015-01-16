class BusinessMethodsController < ApplicationController

  def new
    @met_bus = BusinessMethod.new
  end

  def show
    @met_bus = BusinessMethod.find(params[:id])
  end

  def edit
  end

  def update
  end

end
