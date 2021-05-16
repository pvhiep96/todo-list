class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.references :user
      t.string :description
      t.text :content
      t.datetime :deadline

      t.timestamps
    end
  end
end
