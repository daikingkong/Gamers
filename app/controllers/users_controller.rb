class UsersController < ApplicationController

  def index
    @users = User.all
    @user = current_user
    @game_new = Game.new
  end

  def edit
  end
end
