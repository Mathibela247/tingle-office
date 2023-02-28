ActiveAdmin.register Organization do

  permit_params :name, :organization_type_id, :contact_person, :physical_address, :city, :province, :telephone

  index do
    selectable_column
    id_column
    column :name
    column :organization_type.name
    column :contact_person 
    column :physical_address 
    column :city
    column :province
    column :telephone
    actions
  end

  filter :name
  filter :organization_type.name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.select :organization_type_id, OrganizationType.all.collect{ |p| [ p.name, p.id ] } 
      f.input :contact_person 
      f.input :physical_address 
      f.input :city 
      f.input :province 
      f.input :telephone
    end
    f.actions
  end
end
