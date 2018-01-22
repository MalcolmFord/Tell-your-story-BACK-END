class AddUserToFamily < ActiveRecord::Migration[5.1]
  def change
    add_reference :families, :user, foreign_key: true
  end
end
