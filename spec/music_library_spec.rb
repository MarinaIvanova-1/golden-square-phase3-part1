require 'music_library'

RSpec.describe MusicLibrary do

  context "if we don't have anything in the library" do
    it "returns an empty list" do
      my_library = MusicLibrary.new
      expect(my_library.all).to eq []
    end
  end

  context "if we have a few track in our library" do
    it "returns a full list of them" do
      my_library = MusicLibrary.new
      my_track_1 = double :track
      my_track_2 = double :track
      my_library.add(my_track_1)
      my_library.add(my_track_2)
      expect(my_library.all).to eq [my_track_1, my_track_2]
    end

    it "returns true if one of the tracks contain a keyword" do
      my_library = MusicLibrary.new
      my_track_1 = double :track, matches?: false
      my_track_2 = double :track, matches?: true
      my_track_3 = double :track, matches?: true
      my_library.add(my_track_1)
      my_library.add(my_track_2)
      my_library.add(my_track_3)
      expect(my_library.search("bla")).to eq [my_track_2, my_track_3]
    end
  end

end