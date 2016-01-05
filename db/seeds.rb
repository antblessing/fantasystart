include Faker
require 'faker'

    50.times do
        user = User.create!(
        :email => Faker::Internet.email,
        :password => Faker::Name.name
        )
    end

    api = FantasyFootballNerdApiWrapper.new
    @test = api.get_players
    @test.each do |x|
      Player.create(
        name: x["displayName"],
        team: x["team"],
        position: x["position"]
      )
    end
puts "#{User.count} users created!"
puts "#{Player.count} players created!"
