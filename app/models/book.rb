class Book < ApplicationRecord
  belongs_to :author

  translates :title

  mount_uploader :cover, BookUploader
end
