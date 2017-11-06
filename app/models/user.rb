class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" },
  :storage => :cloudinary, :path => ':id/:style/:filename',
  :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),
   default_url: "/system/articles/photos/missing/:style/missing.jpg"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
