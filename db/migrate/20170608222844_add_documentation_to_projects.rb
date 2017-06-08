class AddDocumentationToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :documentation, :string
  end
end
