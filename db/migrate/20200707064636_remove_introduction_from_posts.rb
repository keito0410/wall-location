class RemoveIntroductionFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :Introduction, :text
  end
end
