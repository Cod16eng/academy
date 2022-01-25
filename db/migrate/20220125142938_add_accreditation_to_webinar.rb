class AddAccreditationToWebinar < ActiveRecord::Migration[6.1]
  def change
    add_column :webinars, :accreditated, :string, default:"No"
  end
end
