class AddToolsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :tools, :string
  end
end
