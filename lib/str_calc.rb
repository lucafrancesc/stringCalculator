class StringCalculator

  def add(str)
    return 0 if str.empty?
    return '-,\n- is not a valid syntax' if /,\n/.match(str)
    numbers = str.gsub(/\n/, "#{delimiter(str)}").split("#{delimiter(str)}").map! { |number| number.to_i }
    return 'negative not allowed' if numbers.sort[0] < 0
    array_checker(numbers)
  end

  def delimiter(str)
    del = ','
    str[0..1] == '//' ?del = delimiter_modifier(str) : del
    return del
  end

  def delimiter_modifier(str)
    if (str[2] == '[') && (/]/.match(str))
       return str[str.index('[')+1..str.index(']')-1]
     else
       return str[2]
     end
  end

  def array_checker(numbers)
    under_1000 = []
    numbers.each { |number| under_1000.push(number) if number < 1000 }
    return under_1000.inject(:+)
  end
end
