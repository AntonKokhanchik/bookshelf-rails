class HomeController < ApplicationController
  def index
    @books_top = Book.all.limit(5)
    @authors_top = Author.all.limit(5)
  end
end
