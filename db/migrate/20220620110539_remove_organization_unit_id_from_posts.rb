class RemoveOrganizationUnitIdFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :organization_unit_id, :integer
  end
end
