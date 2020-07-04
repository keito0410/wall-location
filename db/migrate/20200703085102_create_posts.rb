class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :location_name
      t.string :image_id
      t.text :caption
      t.text :introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
