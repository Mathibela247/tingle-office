ActiveAdmin.register Title do
  permit_params :name
  
  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
