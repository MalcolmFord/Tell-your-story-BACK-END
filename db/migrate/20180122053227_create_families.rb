class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.string :last_name
      t.integer :uuid
      t.string :password_digest

      t.timestamps
    end
  end
end
