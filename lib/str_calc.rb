class StringCalculator

  def add(str)
    return 0 if str.empty?
    numbers = str.gsub(/\n/, ',').split(',').map! { |number| number.to_i }
    return numbers.inject(:+)
  end

end
