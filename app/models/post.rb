class Post < ApplicationRecord
  mount_uploader :post_img, PostUploader
  validates :title, :post_desc, presence: true
end
