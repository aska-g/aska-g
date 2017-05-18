while true

  p "What's your 1st number?"
  number1 = gets.chomp
    abort("ok bye") if number1 == ""

  p "What's your 2nd number?"
  number2 = gets.chomp
    abort("ok bye") if number2 == ""

  p "Which operation [+][-][x][/]?"
  operator = gets.chomp
    abort("ok bye") if operator == ""


def calculator (number1, number2, operator)
  number1 = number1.to_i
  number2 = number2.to_i

  case operator
    when "+"
      "#{number1} #{operator} #{number2} = #{number1+number2}"
    when "-"
      "#{number1} #{operator} #{number2} = #{number1-number2}"
    when "x"
      "#{number1} #{operator} #{number2} = #{number1*number2}"
    when "/"
      "#{number1} #{operator} #{number2} = #{number1/number2}"
    else ""
  end

end

  p calculator(number1, number2, operator)

end





