class TodosReflex < StimulusReflex::Reflex
  def create
    Todo.create name: params[:name]
  end

  def delete
    Todo.destroy element.dataset[:id]
  end

  def toggle
    id = element.dataset["todo-id"]
    t = Todo.find(element.dataset["todo-id"])
    t.update(completed_at: t.completed_at ? nil : Time.now)
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end