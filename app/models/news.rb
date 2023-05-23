class News < ApplicationRecord
belongs_to :user, optional: true
before_save do
self.url=self.title.parameterize
end
def self.cyber
last(10)
end
def self.breaking
last(10)
end
def image=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |f|
  f.write(uploaded_io.read)
end
write_attribute(:image,uploaded_io.original_filename)
end
def image
read_attribute(:image)
end
end
