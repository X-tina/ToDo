class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  
  layout Proc.new { |controller| controller.devise_controller? ? "devise" : "application" }

  #don't need anymore
  def tasks_order
    Task.accessible_by(current_ability).order('created_at desc').limit(10)
  end

end
