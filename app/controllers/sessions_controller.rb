class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end
  
  def twitter_create
    auth = request.env['omniauth.auth']
    user = User.find_by_twitter_id(auth['uid'])
    if user.present?
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in using Twitter Account!"
    else
      user = User.create(username: auth['info']['nickname'], twitter_id: auth['uid'], password: "hey", password_confirmation: "hey")
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Created account using Twitter!"
    end
  end
end
