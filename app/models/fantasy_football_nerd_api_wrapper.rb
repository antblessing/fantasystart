class FantasyFootballNerdApiWrapper
  include HTTParty
  attr_reader :query, :base_uri

  def initialize
    @query = {api_key: ENV['FFNERD_API_KEY']}
    @base_uri = "http://www.fantasyfootballnerd.com/service/"
  end

  def make_request(endpoint, options = nil)
    query = @query
    query = @query.merge(options) if options
    HTTParty.post(@base_uri + endpoint, query: query)
  end

  def get_players
    @response = make_request("/players/json/uhqsicf6nawt")
    @list = @response["Players"]
  end

{
  "playerId": "2",
  "active": "1",
  "jersey": "3",
  "lname": "Anderson",
  "fname": "Derek",
  "displayName": "Derek Anderson",
  "team": "CAR",
  "position": "QB",
  "height": "6-6",
  "weight": "240",
  "dob": "1983-06-15",
  "college": "Oregon State"
}end
