class AuthorsController < ApplicationController
  def index
    @authors = Author.paginate(:page => params[:page], :per_page => 2)
  end

  def new
    @author = Author.new
    @books = Book.all
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render "new"
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:name, :photo, :photo_cache)
  end

end
