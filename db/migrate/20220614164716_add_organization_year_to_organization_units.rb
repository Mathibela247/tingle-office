class AddOrganizationYearToOrganizationUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :organization_units, :organization_year, :date
  end
end
