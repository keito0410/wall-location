class RenameExpianationColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  	rename_column :posts, :expianation, :explanation
  end
end
