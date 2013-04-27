class AddProfileDataToGuides < ActiveRecord::Migration
  def change
    add_column :guides, :aboutme, :string
  end
end
