class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  mount_uploader :photo, AuthorUploader
end
