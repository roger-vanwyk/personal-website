class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.string :headline
      t.string :about_myself
      t.string :development_experience
      t.string :interests
      t.string :github
      t.string :linkedin
      t.string :facebook
      t.string :instagram
      t.string :resume_link

      t.timestamps
    end
  end
end
