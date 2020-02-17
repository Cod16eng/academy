class Speaker < ApplicationRecord
  mount_uploader :speaker_img, SpeakerUploader
  has_many :uploads
  has_many :webinars, through: :uploads

  validates :first_name, :last_name, :description, presence: true

  def speaker_name
		"#{first_name} #{last_name}".titleize
	end

  def speaker_proff
	"#{profession_1}
   #{profession_2}".titleize
	end
end
