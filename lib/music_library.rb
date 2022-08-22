class MusicLibrary
  def initialize
    @music_list = []
  end

  def add(track) 
    @music_list << track
  end

  def all
    @music_list
  end
  
  def search(keyword) 
    @music_list.select { |track| track.matches?(keyword) }
  end
end