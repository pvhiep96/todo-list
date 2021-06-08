class AddIsCompletedToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :is_completed, :boolean
  end
end
