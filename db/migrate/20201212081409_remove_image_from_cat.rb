class RemoveImageFromCat < ActiveRecord::Migration[5.2]
  def change
    remove_column :cats, :image, :string
  end
end
