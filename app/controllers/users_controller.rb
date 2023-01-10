class UsersController < ApplicationController
  def index
    @users = user.all
  end

  def show
    @user = user.find(params[:id])
  end

  def edit
    @user = user.find(params[:id])
  end
end
