class Picture < ApplicationRecord
  has_attached_file :image, styles: { medium: "400x400>" },
  :storage => :cloudinary, :path => 'pictures/:id/:style/:filename',
  :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),
   default_url: "/system/articles/photos/missing/:style/missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :portfolio
end
