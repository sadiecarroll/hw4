class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    flash["notice"] = "Welcome, #{user.username}!"
    redirect_to "/places"
  end

  def destroy
    flash["notice"] = "Goodbye."
    redirect_to "/login"
  end
end
  