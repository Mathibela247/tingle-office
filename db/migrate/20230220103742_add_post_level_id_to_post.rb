class AddPostLevelIdToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :post_level_id, :integer
  end
end
