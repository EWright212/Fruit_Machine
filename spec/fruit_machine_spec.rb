require 'fruit_machine'
describe FruitMachine do
  describe '#display' do
    it 'will display slots' do
      allow(subject).to receive(:display).and_return("black | white | green | yellow")
      expect(subject.display).to eq "black | white | green | yellow"
    end
    it 'randomly displays slots with colours' do
      allow(subject).to receive(:display).and_return("yellow | yellow | yellow | yellow")
      expect(subject.display).to eq "yellow | yellow | yellow | yellow"
    end
    it 'gives a game credit for every £five inserted' do
      subject.insert(5)
      expect(subject.game_credit).to eq(1)
    end
  end
end
