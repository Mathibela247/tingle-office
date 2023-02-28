class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :organization_type_id
      t.string :contact_person
      t.text :physical_address
      t.string :city
      t.string :province
      t.string :telephone

      t.timestamps
    end
  end
end
