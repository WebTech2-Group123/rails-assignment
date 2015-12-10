class SessionsController < ApplicationController

  # render login form
  def index
    if logged_in
      redirect_to articles_path
    end
    @user = User.new
  end

  # login user with credentials
  def login
    @user = User.find_by(email: params[:session][:email].downcase)

    if @user && @user.authenticate(params[:session][:password])
      # Log the user in and redirect to the article page
      log_in @user
      redirect_to articles_path
    else
      # show error message that user is invalid
      flash.now[:error] = 'Invalid username/password'
      render 'index'
    end
  end

  # logout
  def logout
    log_out
    redirect_to login_path
  end

end
