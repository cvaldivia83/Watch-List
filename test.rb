require 'open-uri'
require 'json'

url = "https://api.themoviedb.org/3/movie/550?api_key=715dec9fac7e34b969975d8a2d85b7ed"

  buffer = open("https://api.themoviedb.org/3/movie/#{rand(546..554)}?api_key=715dec9fac7e34b969975d8a2d85b7ed").read

result = JSON.parse(buffer)


puts result["results"]

# puts result['original_title']

# puts result['overview']

# puts "https://www.themoviedb.org/t/p/original#{result['poster_path']}"


