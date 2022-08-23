require 'diary'
require 'secret_diary'

RSpec.describe do
 it "does not allos the user to read the diary if the contents are locked" do
    my_diary = Diary.new("my_contents")
    my_secret_diary = SecretDiary.new(my_diary)
    expect{ my_secret_diary.read }.to raise_error "Go away!"
  end

  it "allows the user to read the diary if the contents are unlocked" do
    my_diary = Diary.new("my_contents")
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.unlock
    expect(my_secret_diary.read).to eq "my_contents"
  end

  it "can lock the unlocked diary" do
    my_diary = Diary.new("my_contents")
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.unlock
    my_secret_diary.lock
    expect{ my_secret_diary.read }.to raise_error "Go away!"
  end
end