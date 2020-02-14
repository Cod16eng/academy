class CreateWebinars < ActiveRecord::Migration[5.2]
  def change
    create_table :webinars do |t|
      t.string :title
      t.text :program
      t.datetime :date_from
      t.datetime :date_to
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
