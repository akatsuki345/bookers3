class BooksController < ApplicationController
  def create
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.new
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

end
