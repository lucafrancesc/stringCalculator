require "str_calc"

describe StringCalculator do

  let(:calc) { described_class.new }

  context '#add' do
    it 'returns 0 if empty string passed' do
      expect(calc.add('')).to eq 0
    end

    it 'does not allow negative numbers' do
      expect(calc.add('-1')).to eq 'negative not allowed'
    end

    it 'returns the sum of the number in the string passed' do
      expect(calc.add('1,3,4')).to eq 8
    end

    it 'manages breaks' do
      expect(calc.add("1\n2,3")).to eq 6
    end

    it 'informs you if the syntax is not valid' do
      expect(calc.add("1,\n2,3")).to eq '-,\n- is not a valid syntax'
    end

    it 'changes the delimiter' do
      expect(calc.add("//;\n2;3;4")).to eq 9
    end

    it 'changes the delimiter if an array is passed' do
      expect(calc.add("//[;a!]\n2;a!3;a!4")).to eq 9
    end

    it 'does not take number greater than 1000' do
      expect(calc.add("1\n2000,32,")).to eq 33
    end
  end
end
