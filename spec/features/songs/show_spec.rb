require 'rails_helper'

RSpec.describe 'the songs show page' do
  #As a visitor
  #When I visit/songs/1 (where 1 is the id of song in database)
  #Then I see the song's title, and artist
  #And I do not see any other songs
  it 'displays the song title' do
    artist = Artist.create(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really Like You", length:403, play_count:230293)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length:402, play_count:230233)
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of the artist for the song' do
    artist = Artist.create(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really Like You", length:403, play_count:230293)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length:402, play_count:230233)
    visit "/songs/#{song.id}"
    # save_and_open_page

    expect(page).to have_content(artist.name)
  end
end
