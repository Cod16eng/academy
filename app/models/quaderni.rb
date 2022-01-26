class Quaderni < ApplicationRecord
  mount_uploader :file_doc, QuaderniUploader
  has_many :speakers_quaderno
  has_many :speakers, through: :speakers_quaderno
  validates :speaker_ids, presence: true
end
