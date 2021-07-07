class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :image
      t.integer :sex
      t.text :profile
    end
  end
end
