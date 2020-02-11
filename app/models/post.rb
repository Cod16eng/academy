class Post < ApplicationRecord
  mount_uploader :post_img, PostUploader
  belongs_to :user
  validates :title, :post_desc, presence: true
end
