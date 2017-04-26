class Book < ApplicationRecord
  belongs_to :author

  mount_uploader :cover, BookUploader
end
