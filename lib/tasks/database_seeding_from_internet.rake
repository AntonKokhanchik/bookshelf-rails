namespace :db do
  desc "Seed database with data from knigafund.ru"
  task :seed_from_internet => :environment do

    6.times do |i|
      url="http://api.knigafund.ru/api/books.json?per_page=20&page=#{i+1}"
      books = JSON.load(open(url))['books']
      books.each do |book|
        if book['book']['authors'].nil?
          next
        else
          adding_author_id = Author.find_or_create_by(
            name: book['book']['authors'][0]['name'])[:id]
        end

        Book.create(
          # так не работает, нужно загрузить, чтоли?
          # cover: book['book']['cover_thumb']['url'],
          title: book['book']['name'],
          year: book['book']['publish_year'],
          author_id: adding_author_id)
      end
      sleep 2
    end
  end
end
