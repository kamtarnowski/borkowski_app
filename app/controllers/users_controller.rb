class UsersController < ApplicationController
  before_action :correct_admin

  def index
    @users = User.paginate(:page => params[:page], :per_page => 15)
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to request.referrer || root_url, notice: "Użytkownik usunięty."
    end
  end

end