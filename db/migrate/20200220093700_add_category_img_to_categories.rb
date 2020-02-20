class AddCategoryImgToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_img, :string
  end
end
