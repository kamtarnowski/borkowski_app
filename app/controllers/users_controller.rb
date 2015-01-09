class UsersController < ApplicationController
  before_action :correct_admin

  def index
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to request.referrer || root_url, notice: "User deleted."
    end
  end

end