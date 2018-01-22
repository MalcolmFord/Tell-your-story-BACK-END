class CreateFamilyUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :family_users do |t|
      t.references :user, foreign_key: true
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
