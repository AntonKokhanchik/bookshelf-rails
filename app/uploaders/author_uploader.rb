class AuthorUploader < BaseUploader

  version :square do
    process resize_to_fill: [300, 300]
  end

end
