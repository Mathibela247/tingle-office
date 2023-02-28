class AddTitleToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :title, :string
    add_column :documents, :contents, :text
  end
end
