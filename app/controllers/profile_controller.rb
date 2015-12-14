class ProfileController < ApplicationController

  # add authentication for all actions
  before_filter :authorize

  # show profile
  def index
    @profile = current_user
  end

  def edit
    @profile = current_user
  end

  # post action for editing article
  def update
    @profile = current_user

    if current_user.update(edit_params)
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  def edit_params
    params.require(:user).permit(:name, :name, :address)
  end
end
