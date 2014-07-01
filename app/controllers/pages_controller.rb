class PagesController < ApplicationController

  def home
  	@tasks = tasks_order
  	@task = Task.new
  end

end
