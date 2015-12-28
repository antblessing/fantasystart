class ProFootballApiWrapper
  include HTTParty

  attr_reader :query, :base_uri

  def initialize
    @query = {api_key: ENV['PRO_FOOTBALL_API_KEY']}
    @base_uri = "https://profootballapi.com"
  end

  def make_request(endpoint, options = nil)
    query = @query
    query = @query.merge(options) if options
    HTTParty.post(@base_uri + endpoint, query: query)
  end

  def get_schedule
    make_request("/schedule")
  end

  #  api.get_player_stats({stats_type: 'offense', team: 'NE'})
  # api.get_player_stats({stats_type: 'offense', player_name: 'a.foster'})
  def get_player_stats(options)
    response = make_request("/players", options)
  end

  def get_json
    api = ProFootballApiWrapper.new
    @players = api.get_player_stats({stats_type: 'offense', player_name: 'a.foster'})
    response = @players.parsed_response
    json_response = eval(response)
  end
end
