class GamesController < ApplicationController
  def show
  end

  def index
    @games = Game.all
    @game_new = Game.new
    @user = current_user
  end

  def create
    game = Game.new(game_params)
    game.user_id = current_user.id
    if game.save
      redirect_to game_path(game)
    else
      @games = Game.all
      @user = current_user
      render :index
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:title, :body)
  end
end
