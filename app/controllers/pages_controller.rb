class PagesController < ApplicationController

  def home
  	@tasks = Task.all
  	@task = Task.new
  end

end
