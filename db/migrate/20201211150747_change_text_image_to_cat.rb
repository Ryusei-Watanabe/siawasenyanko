class ChangeTextImageToCat < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :image, :text
  end
end