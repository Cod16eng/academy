class CreateSpeakersQuaderno < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers_quadernos do |t|
      t.belongs_to :quaderni
      t.belongs_to :speaker
      t.timestamps
    end
  end
end
