class PagesController < ApplicationController

  def home
  	@tasks = Task.paginate(:page => params[:page], :per_page => 10)
  	@task = Task.new
  end

end
