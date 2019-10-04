class ApplicationController < ActionController::Base
   helper_method :current_user, :logged_in?

  private

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]


    # if session[:user_id]
    #   if @current_user
    #      return @current_user
    #   else
    #     @current_user =  User.find_by_id(session[:user_id])
    #   end
    # end
  end

  def logged_in?
    !!current_user
  end
end
