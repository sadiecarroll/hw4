class ApplicationController < ActionController::Base
  before_action :user

  def user
    puts "------------------ code before every request ------------------"
    @user = User.find_by({ "id" => session["user_id"] })
  end
end
