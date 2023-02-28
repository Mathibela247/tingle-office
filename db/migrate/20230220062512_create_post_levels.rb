class CreatePostLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :post_levels do |t|
      t.integer :level

      t.timestamps
    end
  end
end
