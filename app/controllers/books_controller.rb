class BooksController < ApplicationController
  def index
    @books = Book.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render "new"
    end
  end

  def edit
    @book = Book.find(params[:id])
    @authors = Author.all
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :year, :author_id, :cover, :cover_cache)
  end

end
