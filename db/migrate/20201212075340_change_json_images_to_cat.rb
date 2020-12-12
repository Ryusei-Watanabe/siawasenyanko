class ChangeJsonImagesToCat < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :image, :string
  end
end