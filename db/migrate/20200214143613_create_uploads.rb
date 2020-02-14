class CreateUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads do |t|
      t.string :upload
      t.integer :webinar_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
