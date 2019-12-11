class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.date :date , default: -> { 'CURRENT_TIMESTAMP' }
      t.string :mood
      t.text :body

      t.timestamps
    end
  end
end
