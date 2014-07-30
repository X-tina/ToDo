class UsersController < ApplicationController
  def show
  	@tasks = Task.all
  end
end
