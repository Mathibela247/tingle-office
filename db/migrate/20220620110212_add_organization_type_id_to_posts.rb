class AddOrganizationTypeIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :organization_type_id, :integer
  end
end
