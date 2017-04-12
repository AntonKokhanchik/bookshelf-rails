authors = ["Богдан","Антон","Мария","Дарья"]

authors.each do |author|
  Author.create(name:author)
end

books = ["Книжка", "Еще книжка", "Третья книжка", "Красная книжка"]

books.each.with_index(1) do |book, index|
  Book.create(title:book, year:(1953 + index), author_id:index)
end
