require 'fruit_machine'
describe FruitMachine do
  describe '#display' do
    it 'will display slots' do
      expect(subject.display).to eq ['black', 'white', 'yellow']
    end
  end
end
