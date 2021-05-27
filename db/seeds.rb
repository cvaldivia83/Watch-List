# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# 9.times do
#   buffer = open("https://api.themoviedb.org/3/movie/#{rand(546..555)}?api_key=715dec9fac7e34b969975d8a2d85b7ed").read
#   film = JSON.parse(buffer)

#   Movie.create!(
#     title: film['original_title'],
#     overview: film['overview'],
#     poster_url: "https://www.themoviedb.org/t/p/original#{film['poster_path']}",
#     rating: RATING.sample
#   )
# end

url = "http://tmdb.lewagon.com/movie/top_rated"


movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

movies["results"].each do |movie_hash|
  movie = Movie.create!(
    title: movie_hash['original_title'],
    overview: movie_hash['overview'],
    poster_url: "https://www.themoviedb.org/t/p/original#{movie_hash['poster_path']}",
    rating: movie_hash['vote_average']
  )
end
