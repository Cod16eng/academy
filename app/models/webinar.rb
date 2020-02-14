class Webinar < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :web_speaker_ups
  has_many :speakers, through: :web_speaker_ups

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :program, presence: true
end
