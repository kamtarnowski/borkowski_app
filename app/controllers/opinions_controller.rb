class OpinionsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @opinion = current_user.opinion.build(opinion_params)
  end

  def destroy
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



