class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
  
  before_filter :require_login
  
=======
  before_filter :require_login

>>>>>>> initial commit with user auth
  protected
  def not_authenticated
    redirect_to login_path, :alert => "Please login first."
  end
end
