class Player < ActiveRecord::Base
	require 'riotapi'

	before_save :downcase_players

	# returns the player id
	def self.return_id(name)
		api = RiotApi.new
		info = api.get_summoner_id(name)
		info[name]["id"]
	end

	#downcase the players name before saving
	def downcase_players
		self.p1.downcase!
		self.p2.downcase!
	end
end
