require_relative '../board'

RSpec.describe StreetFighterBoard do
  let(:characters) do
    [
      ['Ryu', 'E.Honda', 'Blanka', 'Guile', 'Balrog', 'Vega'],
      ['Ken', 'Chun Li', 'Zangief', 'Dhalsim', 'Sagat', 'M.Bison']
    ]
  end

  describe 'moves' do
    it 'returns E.Honda after moving right' do
      moves = ['right']

      expected_response = ['E.Honda']
      expect(streetFighterSelection(characters, [0,0], moves)).to eq(expected_response)
    end

    it 'returns Sagat as current character after doing some weird moves pt.1' do
      moves = ['right', 'left', 'left', 'up', 'down', 'left']

      expectec_response = ['E.Honda', 'Ryu', 'Vega', 'Vega', 'M.Bison', 'Sagat']
      expect(streetFighterSelection(characters, [0,0], moves)).to eq(expectec_response)
    end

    it 'returns Guile as current character after doing some weird moves pt.2' do
      moves = ['down', 'left', 'left', 'down', 'left', 'up']

      expectec_response = ['Ken', 'M.Bison', 'Sagat', 'Sagat', 'Dhalsim', 'Guile']
      expect(streetFighterSelection(characters, [0,0], moves)).to eq(expectec_response)
    end

    it 'returns Chun Li as current character after doing some weird moves pt.3' do
      moves = ['down', 'left', 'up', 'right', 'right', 'down']

      expectec_response = ['Ken', 'M.Bison', 'Vega', 'Ryu', 'E.Honda', 'Chun Li']
      expect(streetFighterSelection(characters, [0,0], moves)).to eq(expectec_response)
    end
  end

  describe 'cursors' do
    let(:board) { StreetFighterBoard.new(characters) }

    it 'is not circular vertically' do
      moves = ['up', 'up']

      expect(streetFighterSelection(characters, [0,0], moves)).to eq(["Ryu", "Ryu"])
    end

    it 'is circular horizontally' do
      moves = ['left', 'left']

      expect(streetFighterSelection(characters, [0,0], moves)).to eq(['Vega', 'Balrog'])
    end
  end
end
