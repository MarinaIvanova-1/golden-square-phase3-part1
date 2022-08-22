require 'track'
require 'music_library'

RSpec.describe "integration" do
  it "add the tracks to the library and returns the whole list" do
    track_1 = Track.new('artist1', 'track1')
    track_2 = Track.new('artist2', 'track2')
    my_library = MusicLibrary.new
    my_library.add(track_1)
    my_library.add(track_2)
    expect(my_library.all).to eq [track_1, track_2]
  end
end