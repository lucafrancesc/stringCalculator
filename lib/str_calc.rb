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
    return del if str[0..1] != '//'
    if str[0..1] == '//'
      if (str[2] == '[') && (/]/.match(str))
         del = str[str.index('[')+1..str.index(']')-1]
       else
         del = str[2]
       end
    end
    return del
  end

  def array_checker(numbers)
    under_1000 = []
    numbers.each do |number|
        under_1000.push(number) if number < 1000
    end
    return under_1000.inject(:+)
  end
end

# x = StringCalculator.new
# p x.delimiter("//[;a!]\n2;a!3;a!4")
