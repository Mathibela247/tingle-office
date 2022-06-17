class AddParentIdToOrganizationUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :organization_units, :parent_id, :integer
  end
end
