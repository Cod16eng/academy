class Webinar < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :uploads
  has_many :speakers, through: :uploads

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :program, presence: true
end
