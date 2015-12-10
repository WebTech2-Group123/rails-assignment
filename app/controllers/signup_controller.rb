class SignupController < ApplicationController

  def index
  end

  def signup
    @user = User.new(user_params)
    if @user.save
      render 'confirm'
    else
      render 'index'
    end
  end
end

# get user object from http params
def user_params
  params.require(:user).permit(:email, :password)
end
