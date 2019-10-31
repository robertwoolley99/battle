require "player"

describe Player do

  subject(:player) { described_class.new("Mittens") }

  it "returns the player name" do
    expect(subject.name).to eq "Mittens"
  end



end
