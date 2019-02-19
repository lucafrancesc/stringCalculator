class StringCalculator

  def add(str)
    return 0 if str.empty?
    return '-,\n- is not a valid syntax' if /,\n/.match(str)
    numbers = str_to_array(str)
    return numbers.sort[0].negative? ? 'negative not allowed' : sums_under_1000(numbers)
  end

  private
  def delimiter(str)
    str[0..1] == '//' ? (del = delimiter_modifier(str)) : (del = ',')
    del
  end

  def str_to_array(str)
    str.gsub(/\n/, "#{delimiter(str)}").split("#{delimiter(str)}").map! { |number| number.to_i }
  end

  def delimiter_modifier(str)
    (str[2] == '[') && (/]/.match(str)) ? str[str.index('[')+1..str.index(']')-1] : str[2]
  end

  def sums_under_1000(numbers)
    sum = 0
    numbers.each { |number| sum += number if number < 1000 }
    sum
  end
end
