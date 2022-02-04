class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in

  def current_user
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
    else
      @current_user
    end
  end

  def logged_in
    !!current_user
  end

  def require_user
    if !logged_in
    flash[:alert] = 'You must be logged in to perform that action'
    redirect_to login_path
  end
end
end
