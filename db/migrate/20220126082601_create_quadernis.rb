class CreateQuadernis < ActiveRecord::Migration[6.1]
  def change
    create_table :quadernis do |t|
      t.string :title
      t.date :release_date
      t.integer :speaker_id
      t.string :file_doc

      t.timestamps
    end
  end
end
