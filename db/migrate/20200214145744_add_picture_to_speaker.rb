class AddPictureToSpeaker < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :speaker_img, :string
  end
end
