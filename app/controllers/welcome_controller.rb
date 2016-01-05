class WelcomeController < ApplicationController
  def index
  end

  def about
    @user = current_user.email
    @users = User.all
  end
end
