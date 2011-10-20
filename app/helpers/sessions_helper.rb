module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def authenticate
    deny_access unless signed_in?
  end
  
  def deny_access
    redirect_to login_path, :notice => "You need to have an account to access this page."
  end
end
