require 'rails_helper'

RSpec.describe Artist, type: :model do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      it 'shows the average song length' do
        prince = Artist.create!(name: 'Prince')
        purple = prince.songs.create!(title: 'Purple Rain', length: 437, play_count: 3498)
        beret = prince.songs.create!(title: 'Raspberry Beret', length: 427, play_count: 5498)

        expect(prince.average_song_length.round(2)).to eq(432)
      end
    end
  end
end
