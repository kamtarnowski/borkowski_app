class OpinionsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :show, :new]
  before_action :correct_admin, only: [:destroy, :index, :update]

  def new
    if current_user.opinion
      redirect_to request.referrer || root_path
      flash[:notice] = 'Użytkownik posiada już opinię.'
    end

    @opinion = Opinion.new

  end

  def update
    @opinion = Opinion.find(params[:id])
    if @opinion.update_attributes(opinion_params)
      redirect_to request.referrer
    else
      redirect_to request.referrer
      flash[:notice] = 'Nie udało się edytować.'
    end
  end

  def create
    @opinion = current_user.build_opinion(opinion_params)
    if @opinion.save
      flash[:notice] = "Przesłano opinię, dziękujemy."
      redirect_to root_path
    else
      flash[:notice] = "Nie udało się przesłać opini."
      render 'new'
    end
  end

  def destroy
    @opinion = Opinion.find(params[:id]).delete
    redirect_to request.referrer || root_path
  end

  def show
  end

  def index
  end

  private

  def opinion_params
    params.require(:opinion).permit(:content)
  end

end



