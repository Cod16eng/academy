class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :profession_1
      t.string :profession_2
      t.text :description

      t.timestamps
    end
  end
end
