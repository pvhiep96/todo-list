class TodosController < ApplicationController
  before_action :authorize_request
  before_action :find_todo, except: %i[create index]

  # GET /todos
  def index
    per_page = 10
    @todos = @current_user.todos.page(params[:page] || 1).per(per_page)
    total_pages = @todos.total_pages
    response = {
      todos: @todos,
      per_page: per_page,
      total_pages: total_pages,
      status: :ok
    }
    render json: response
  end

  # POST /todos
  def create
    @todo = @current_user.todos.create!(todo_params)
    render json: @todo, status: :ok
  end

  def update
    @todo.update(todo_params)
    render json: @todo, status: :ok
  end

  def completed
    @todo.update(is_completed: true)
    render json: @todo, status: :ok
  end

  def destroy
    @todo.destroy
  end

  private

  def todo_params
    params.permit(:content, :deadline, :description)
  end

  def find_todo
    @todo = @current_user.todos.find_by(id: params[:id])
  end
end
