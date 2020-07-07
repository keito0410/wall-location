class AddExplanationToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :expianation, :text
  end
end
