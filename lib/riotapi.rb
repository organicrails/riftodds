class RiotApi

  BASE_URL = "https://na.api.pvp.net"
  API_KEY = ENV["riot_api_key"]

  def get_summoner_id(name)
    summoner_url = "#{BASE_URL}/api/lol/na/v1.4/summoner/by-name/#{name}#{API_KEY}" 
    parse_json(summoner_url)
  end

  def get_full_stats(summoner_id)
    stat_url = "#{BASE_URL}/api/lol/na/v1.3/stats/by-summoner/#{summoner_id}/ranked#{API_KEY}" 
    parse_json(stat_url)
  end

  def get_champion
    champion_url = "#{BASE_URL}/api/lol/static-data/na/v1.2/champion#{API_KEY}"
    parse_json(champion_url)
  end

  def parse_json(url)
    response = HTTParty.get(url)
    json = JSON.parse(response.body)
    json
  end

end