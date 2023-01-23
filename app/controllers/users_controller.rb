class UsersController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :caption, :profile_image)
  end
end
