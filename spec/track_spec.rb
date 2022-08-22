require 'track'

RSpec.describe  Track do
  it "adds the title and the artist to the instanse of the class and returns it" do
    track_1 = Track.new('track_1', 'artist_1')
    expect(track_1.artist).to eq 'artist_1'
    expect(track_1.title).to eq 'track_1'
  end

  it "returns true if the title or the artist includes the given keyword" do
    track_1 = Track.new('track_1', 'artist_1')
    expect(track_1.matches?("rti")).to eq true
    expect(track_1.matches?("rac")).to eq true
    expect(track_1.matches?("bla")).to eq false
  end
end