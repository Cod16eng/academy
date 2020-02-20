class Category < ApplicationRecord
  mount_uploader :category_img, CategoryUploader
  has_many :webinars
  validates :category_name, :category_img, presence: true
end
