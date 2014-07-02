class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @tasks = tasks_order
    
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:note, :completed)
  end

  def task_find
    Task.find(params[:id])
  end

end
