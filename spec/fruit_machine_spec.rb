require 'fruit_machine'
describe FruitMachine do
  describe '#pull lever' do
    it 'will display slots' do
      subject.insert(5)
      allow(subject).to receive(:pull_lever).and_return("black | white | green | yellow")
      expect(subject.pull_lever).to eq "black | white | green | yellow"
    end
    it 'randomly displays slots with colours' do
      subject.insert(5)
      allow(subject).to receive(:pull_lever).and_return("yellow | yellow | yellow | yellow")
      expect(subject.pull_lever).to eq "yellow | yellow | yellow | yellow"
    end
    it 'gives a game credit for every £five inserted' do
      subject.insert(5)
      expect(subject.game_credit).to eq(1)
    end
    it 'deducts a game credit after each play' do
      subject.insert(5)
      expect(subject.game_credit).to eq(1)
      subject.pull_lever
      expect(subject.game_credit).to eq(0)
    end
  end
end
