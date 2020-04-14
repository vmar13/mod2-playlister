# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Playlist.destroy_all
Artist.destroy_all
Album.destroy_all
Track.destroy_all
AddSong.destroy_all

20.times do
User.create(name: Faker::Name.name)
end

20.times do 
Playlist.create(title: Faker::Beer.brand, user_id: User.all.sample.id)
end 


20.times do
Artist.create(name: Faker::Music.band, bio: Faker::Lorem.paragraph)
end

20.times do
Album.create(title: Faker::Music.album, artist_id: Artist.all.sample.id)
end
 
20.times do 
Track.create(name: Faker::Creature::Cat.name, album_id: Album.all.sample.id)
end 

20.times do 
AddSong.create(playlist_id: Playlist.all.sample.id, track_id: Track.all.sample.id)
end 