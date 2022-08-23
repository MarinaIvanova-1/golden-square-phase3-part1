require 'diary'

RSpec.describe Diary do
  it "returns the contents of the diary" do
    my_diary = Diary.new("my contents")
    expect(my_diary.read).to eq "my contents"    
  end
end