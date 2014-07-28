class TasksController < ApplicationController

  def new
    @task = Task.new
    render :show_form
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    authorize! :create, @task
    @tasks = Task.all
    save_task
  end

  def edit
    @task = task_find
    authorize! :edit, @task
    render :show_form
  end

  def update
    @task = task_find
    @task.assign_attributes(task_params)
    authorize! :update, @task
    @tasks = Task.all
    save_task
  end

  def destroy
    @task = task_find
    authorize! :destroy, @task
    @task.destroy
    @tasks = Task.all
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :ok }
      format.js
    end
  end

  private

  def task_params
    params.require(:task).permit(:note, :completed)
  end

  def task_find
    Task.find(params[:id])
  end

  def save_task
    respond_to do |format|
      if @task.save 
        format.html { render :hide_form }
      else
        format.html { render :show_form }
      end
      format.js { render :hide_form }
    end
  end

end
