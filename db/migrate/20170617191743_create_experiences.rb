class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :link
      t.string :position
      t.string :description
      t.string :date
      t.string :picture
      t.integer :order_listed

      t.timestamps
    end
  end
end
