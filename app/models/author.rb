class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  translates :name

  mount_uploader :photo, AuthorUploader
end
