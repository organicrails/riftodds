class PlayersController < ApplicationController

	def index
	end

	def create
		@player = Player.new(players_params)
		@player.save
		redirect_to @player
	end

	def show
		@player = Player.find(params[:id])
	end

	private

	def players_params
		params.require(:player).permit(:p1, :p2, :c1, :c2)
	end

end
