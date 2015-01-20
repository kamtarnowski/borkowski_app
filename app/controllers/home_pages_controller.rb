class HomePagesController < ApplicationController
  before_action :correct_admin

  def edit
    @home_p = HomePage.find(1)
  end

  def update
    @home_p = HomePage.find(1)
    if @home_p.update_attributes(home_params)
      flash[:notice]= 'Dokonano edycji'
      redirect_to request.referrer
    else
      render 'edit'
      flash[:notice]= 'Nieudana próba edycji'
    end
  end

  private

  def home_params
    params.require(:home_page).permit(:title, :content,
                                      :met_title, :met_description, :met_keywords, :carousel)
  end

end
