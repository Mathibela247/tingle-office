class AddProfileInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :initials, :string
    add_column :users, :title_id, :integer
    add_column :users, :persal_number, :integer
    add_column :users, :identity_number, :integer
    add_column :users, :dob, :date
    add_column :users, :gender_id, :integer
    add_column :users, :race_id, :integer
    add_column :users, :disability, :string
    add_column :users, :office_number, :integer
    add_column :users, :mobile_number, :integer
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
  end
end
