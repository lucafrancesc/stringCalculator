class StringCalculator

  def add(str)
    return 0 if str.empty?
    return '-,\n- is not a valid syntax' if /,\n/.match(str)
    numbers = str.gsub(/\n/, "#{delimiter(str)}").split("#{delimiter(str)}").map! { |number| number.to_i }
    return 'negative not allowed' if numbers.sort[0] < 0
    return numbers.inject(:+)
  end

  def delimiter(str)
    del = ','
    str[0..1] == '//' ? (del = str[2]) : del
    del
  end
end

# str = 'asd'
# if str == 'asd'
#   raise 'cazzo'
# end
