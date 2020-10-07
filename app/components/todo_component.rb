class TodoComponent < ViewComponentReflex::Component
  def initialize(todo:, todo_model:)
    @todo = todo
    @todo_model = todo_model
    @editing = false
  end

  def collection_key
    @todo.id
  end

  def toggle_editing
    @editing = !@editing
  end

  def update
    id = element["todo-id"]
    t = Todo.find(id)
    t.update(name: params[:name])
    @editing = false
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end