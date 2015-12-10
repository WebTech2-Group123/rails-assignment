class ProfileController < ApplicationController

  # add authentication for all actions
  before_filter :authorize

  # show profile
  def index
    @profile = current_user
  end

end
