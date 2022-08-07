class GamesController < ApplicationController
  def show
  end

  def index
    @games = Game.all
    @game_new = Game.new
    @user = current_user
  end

  def edit
  end
end
