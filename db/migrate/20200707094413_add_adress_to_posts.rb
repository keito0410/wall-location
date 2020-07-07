class AddAdressToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :address, :string
    add_column :posts, :height, :string
    add_column :posts, :width, :string
    add_column :posts, :fence, :string
  end
end
