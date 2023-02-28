class AddIsactiveToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :isactive, :boolean
  end
end
