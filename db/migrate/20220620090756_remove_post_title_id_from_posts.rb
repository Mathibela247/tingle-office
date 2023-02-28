class RemovePostTitleIdFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :post_title, :integer
  end
end
