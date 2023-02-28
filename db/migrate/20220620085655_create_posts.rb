class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :post_title
      t.string :post_name
      t.integer :supervisor_id
      t.integer :organization_unit_id
      t.integer :post_level

      t.timestamps
    end
  end
end
