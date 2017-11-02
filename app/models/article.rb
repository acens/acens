class Article < ApplicationRecord
  has_attached_file :photo, styles: { medium: "350x350", thumb: "100x100" },
   :storage => :cloudinary, :path => ':id/:style/:filename',
   :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),
    default_url: "/system/articles/photos/missing/:style/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates_presence_of :title, :subtitle, :photo, :body
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged


  def title_a
    split_title[0].join
  end

  def title_b
    split_title[1].join
  end

  private
  def split_title
    title.chars.each_slice( (title.size/2.0).round ).to_a
  end
end
