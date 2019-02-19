class StringCalculator

  def add(str)
    return 0 if str.empty?
    return '-,\n- is not a valid syntax' if /,\n/.match(str)
    numbers = str.gsub(/\n/, ',').split(',').map! { |number| number.to_i }
    return numbers.inject(:+)
  end

end
