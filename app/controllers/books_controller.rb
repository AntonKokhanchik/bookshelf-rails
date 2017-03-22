class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end
end
