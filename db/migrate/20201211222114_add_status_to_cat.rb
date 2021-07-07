class AddStatusToCat < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :status, :integer
  end
end
