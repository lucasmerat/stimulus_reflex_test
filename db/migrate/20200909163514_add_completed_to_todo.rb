class AddCompletedToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :completed_at, :boolean
  end
end
