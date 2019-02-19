class StringCalculator

  def add(str)
    return 0 if str.empty?
    numbers = str.split(',').map! { |number| number.to_i }
    return numbers.inject(:+)
  end
end
