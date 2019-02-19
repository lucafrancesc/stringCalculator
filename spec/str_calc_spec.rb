require "str_calc"

describe StringCalculator do

  let(:calc) { described_class.new }

  context '#add' do
    it 'returns 0 if empty string passed' do
      expect(calc.add('')).to eq 0
    end
  end
end
