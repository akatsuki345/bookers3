class BooksController < ApplicationController
  def create
  end

  def index
    @book = Book.index
  end

  def show
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
