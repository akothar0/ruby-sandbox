require_relative "dependencies"

# pp "What's your name?"
# their_name = gets.chomp

# pp "Hello #{their_name} welcome to your quest!"

pirate_weather_api_url = "https://api.pirateweather.net/forecast/" + "3RrQrvLmiUayQ84JSxL8D2aXw99yRKlx1N4qFDUE" + "/41.8887,-87.6355"

response = HTTP.get(pirate_weather_api_url)

parsed_response = JSON.parse(response.to_s)
pp parsed_response["currently"]["temperature"]
