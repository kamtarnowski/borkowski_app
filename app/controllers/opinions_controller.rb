class OpinionsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :show, :new]
  before_action :correct_admin, only: [:destroy, :index]

  def new
    if current_user.opinion
      redirect_to request.referrer || root_path
      flash[:notice] = 'Użytkownik posiada już opinię.'
    end
  end

  def create
    current_user.opinion.build(opinion_params)
  end

  def destroy
    Opinion.find(params[:id]).delete
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



