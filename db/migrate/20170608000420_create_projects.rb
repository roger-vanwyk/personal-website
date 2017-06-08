class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :project_type
      t.string :website
      t.string :github
      t.integer :order_listed

      t.timestamps
    end
  end
end
