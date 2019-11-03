# frozen_string_literal: true

require 'attack'
describe Attack do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe '.run' do
    it 'damages the player' do
      expect(player).to receive(:damage)
      object.run(player)
    end
  end
end
