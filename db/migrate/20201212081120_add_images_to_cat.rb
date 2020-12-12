class AddImagesToCat < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :images, :json
  end
end
