class CreatePersonalMemories < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_memories do |t|
      t.string :title
      t.text :memory
      t.string :location
      t.string :time
      t.references :user, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
