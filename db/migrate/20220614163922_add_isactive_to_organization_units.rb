class AddIsactiveToOrganizationUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :organization_units, :isactive, :boolean
  end
end
