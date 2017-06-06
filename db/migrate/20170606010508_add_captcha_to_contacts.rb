class AddCaptchaToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :captcha, :string
  end
end
