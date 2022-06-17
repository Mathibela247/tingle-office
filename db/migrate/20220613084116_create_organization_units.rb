class CreateOrganizationUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :organization_units do |t|
      t.string :name
      t.integer :organization_type_id
      t.string :description

      t.timestamps
    end
  end
end
