class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def login
  end

  def welcome
    redirect_to '/' unless logged_in?

    @private_posts = Post.where(public: false)
  end
end
