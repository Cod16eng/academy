class Upload < ApplicationRecord
  mount_uploader :upload, UploadUploader
  belongs_to :webinar
  belongs_to :speaker
end
