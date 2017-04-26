namespace :recreate_versions do
  desc "Recreate versions for Books"
  task :books => :environment do
    Book.find_each do |book|
      book.cover.recreate_versions! if book.cover?
    end
  end
  desc "Recreate versions for Authors"
  task :authors => :environment do
    Book.find_each do |author|
      author.photo.recreate_versions! if author.photo?
    end
  end
end
