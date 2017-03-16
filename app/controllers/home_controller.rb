class HomeController < ApplicationController
  def index
    @books_top = Book.all.limit(2)
    @authors_top = Author.all.limit(2)
  end
end
