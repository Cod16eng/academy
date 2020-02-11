class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post_desc
      t.string :post_img

      t.timestamps
    end
  end
end
