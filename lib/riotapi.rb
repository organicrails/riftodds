class RiotApi

  BASE_URL = "https://na.api.pvp.net"
  API_KEY = ENV["riot_api_key"]

  def get_summoner_id(name)
    summoner_url = "#{BASE_URL}/api/lol/na/v1.4/summoner/by-name/#{name}#{API_KEY}" 
    parse_json(summoner_url)
  end

  def parse_json(url)
    response = HTTParty.get(url)
    json = JSON.parse(response.body)
    json
  end

end