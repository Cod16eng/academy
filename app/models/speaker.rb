class Speaker < ApplicationRecord
  mount_uploader :speaker_img, SpeakerUploader
  has_many :uploads
  has_many :webinars, through: :uploads

  has_many :speakers_quaderno
  has_many :quaderni, through: :speakers_quaderno

  validates :first_name, :last_name, :description, presence: true

  def speaker_name
		"#{first_name} #{last_name}".titleize
	end

  def speaker_proff
	"#{profession_1}
   #{profession_2}".titleize
	end
end
