class BookUploader < BaseUploader

  version :big do
    process resize_to_fit: [400, 600]
  end

  version :small do
    process resize_to_fit: [200, 300]
  end

end
