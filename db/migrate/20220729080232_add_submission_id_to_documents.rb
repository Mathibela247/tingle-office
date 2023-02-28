class AddSubmissionIdToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :submission_id, :integer
  end
end
