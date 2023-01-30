class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:top]
  before_action :correct_user
  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
    flash[:success] = "Signed in successfully."
    flash[:notice] = "Welcome! You have signed up successfully."
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    flash[:success] = "You have updated user successfully."
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    if @user.save
      redirect_to user_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
  
  def correct_user
    @book= Book.find(params[:id])
    @user = @book.user
    redirect_to(books_path) unless @user == current_user
  end
  
end
