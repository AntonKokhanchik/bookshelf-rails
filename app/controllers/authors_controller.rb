class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end
end
