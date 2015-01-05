class OpinionsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :show]
  before_action :correct_admin, only: [:destroy, :index]

  def create
    @opinion = current_user.opinion.build(opinion_params)
  end

  def destroy
    Opinion.find(params[:id]).delete
    redirect_to opinions_path
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



