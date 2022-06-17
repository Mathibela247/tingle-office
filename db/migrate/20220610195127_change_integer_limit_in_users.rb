class ChangeIntegerLimitInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :identity_number, :integer, limit: 8
    change_column :users, :persal_number, :integer, limit: 8
    change_column :users, :office_number, :integer, limit: 8
    change_column :users, :mobile_number, :integer, limit: 8
  end
end
