require 'cat_facts'

RSpec.describe CatFacts do
  it "provides cat facts" do
    requester = double :requester
    catfact = CatFacts.new(requester)
    expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return(
      '{"fact":"Cats only sweat through their paws and nowhere else on their body","length":65}'
    )

    expect(catfact.provide).to eq "Cat fact: Cats only sweat through their paws and nowhere else on their body"

  end
end
