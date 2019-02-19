class StringCalculator
  def add(str)
    return 0 if str.empty?
    numbers = str.split(',')
    numbers.map! do |number|
      number.to_i
    end
    return numbers.inject(:+)
  end
end
