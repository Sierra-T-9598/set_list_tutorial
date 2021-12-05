# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
prince = Artist.create!(name: 'Prince')
taylor_swift = Artist.create!(name: 'Taylor Swift')
purple = prince.songs.create!(title: 'Purple Rain', length: 437, play_count: 3498)
beret = prince.songs.create!(title: 'Raspberry Beret', length: 427, play_count: 5498)
all_to_well = taylor_swift.songs.create!(title: 'All to Well', length: 500, play_count: 34)
mean = taylor_swift.songs.create!(title: 'Mean', length: 200, play_count: 490)
