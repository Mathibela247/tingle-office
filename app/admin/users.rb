ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :initials
      f.input :lastname
      f.select :title_id, Title.all.collect{ |p| [ p.name, p.id ] }
      f.select :gender_id, Gender.all.collect{ |p| [ p.name, p.id ] }
      f.select :race_id, Race.all.collect{ |p| [ p.name, p.id ] }
      f.input :identity_number
      f.input :persal_number
      f.date_select :dob
      f.input :address
      f.input :office_number
      f.input :mobile_number
      f.input :city
      f.input :zip
    end
    f.actions
  end

end
