# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player1) { described_class.new('Mittens') }
  subject(:player2) { described_class.new('Dave') }

  it 'returns the player name' do
    expect(player1.name).to eq 'Mittens'
  end
  it 'returns the hit points' do
    expect(player2.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
  # it "damages the player" do
  #   expect(player1).to receive(:receive_damage)
  #   player2.attack(player1)
  # end
  it 'reduces hit points' do
    expect { player1.damage(10) }.to change { player1.hit_points }.by(-10)
  end
end
