class AddAccronymToOrganizationUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :organization_units, :accronym, :string
  end
end
