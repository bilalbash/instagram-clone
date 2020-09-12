class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.find(params[:id])
    respond_to :js
  end
 
  def show
    @user = User.find(params[:id])
  end

end
