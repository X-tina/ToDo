class TasksController < ApplicationController

  def new
    @task = Task.new
    render :show_form
  end

  def create
    @task = Task.create(task_params)
    save_task
  end

  def edit
    @task = task_find
    render :show_form
  end

  def update
    @task = task_find
    @task.update_attributes(task_params)
    save_task
  end

  def destroy
    @task = task_find.destroy
    @tasks = tasks_order
  end

  private

  def task_params
    params.require(:task).permit(:note, :completed)
  end

  def task_find
    Task.find(params[:id])
  end

  def save_task
    if @task.save 
      @tasks = tasks_order
      render :hide_form
    else
      render :show_form
    end
  end

end
