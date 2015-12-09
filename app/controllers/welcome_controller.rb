class WelcomeController < ApplicationController
  def index
  end
  
  def about_us
  	@names = ["bilal","muctadir","chen","manpriya","rasmus"]
  end

end
