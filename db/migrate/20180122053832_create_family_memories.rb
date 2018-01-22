class CreateFamilyMemories < ActiveRecord::Migration[5.1]
  def change
    create_table :family_memories do |t|
      t.references :family, foreign_key: true
      t.string :title
      t.text :memory
      t.string :location
      t.string :time
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
