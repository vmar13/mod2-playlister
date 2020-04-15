require 'httparty'
require 'byebug'

url = 'https://api.spotify.com/v1/search?query=drake&type=track&offset=0&limit=20'

response = HTTParty.get(url, {
    headers: {"Authorization" => "Bearer BQALtxcIikW_ipiczBiN-GhZEbdVdI9NDND7BQauaJHCaMyKkjsy6f5OJcMPDfS9KbHOx--GZ7EG1BGaVq8"},
   
  })

@parsed = response.parsed_response

# song_name = []
# i=0
# @parsed["tracks"]["items"].each do |song|
#     song_name << song[i]["name"]
#     i+=1
# end

byebug
puts " goodbye"
