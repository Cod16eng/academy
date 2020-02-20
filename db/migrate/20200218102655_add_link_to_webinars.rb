class AddLinkToWebinars < ActiveRecord::Migration[5.2]
  def change
    add_column :webinars, :web_link, :string
  end
end
