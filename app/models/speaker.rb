class Speaker < ApplicationRecord
  mount_uploader :speaker_img, SpeakerUploader
  has_many :uploads
  has_many :webinars, through: :uploads

  def speaker_name
		"#{first_name} #{last_name}".titleize
	end
end
