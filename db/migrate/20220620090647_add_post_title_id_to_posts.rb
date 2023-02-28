class AddPostTitleIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :post_title_id, :integer
  end
end
