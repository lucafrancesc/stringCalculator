require "str_calc"

describe StringCalculator do

  let(:calc) { described_class.new }

  context '#add' do
    it 'returns 0 if empty string passed' do
      expect(calc.add('')).to eq 0
    end

    it 'returns the sum of the number in the string passed' do
      expect(calc.add('1')).to eq 1
    end
  end
end
