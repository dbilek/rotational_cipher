class RotationalCipher
  LOWER_LIMIT_NUM = 0
  HIGHER_LIMIT_NUM = 26
  ASCII_UPCASE_NUM = 64
  ASCII_LOWCASE_NUM = 96

  def initialize(number)
     if number >= LOWER_LIMIT_NUM && number <= HIGHER_LIMIT_NUM
       @number = number.to_i
       @valid_number = true
     else
       @valid_number = false
     end
  end

  def valid_number?
    @valid_number
  end

  def rot(word)
    @word = word
    array = []
      @word.each_char.map do |letter|
        if letter =~ /[A-Za-z]/
           array << increase_letter(letter, @number)
        else
        array << letter
        end
      end
    result = array.join
    result
  end
  
  private
 
  def increase_letter(letter, param_number)
    ascii_number =  letter =~ /[A-Z]/ ? ASCII_UPCASE_NUM : ASCII_LOWCASE_NUM
    letter_ascii_num = letter.ord #letter to number 
    letter_number = letter_ascii_num - ascii_number

    if param_number == HIGHER_LIMIT_NUM
       remainder = letter_number
    elsif (letter_number + param_number) > HIGHER_LIMIT_NUM
     
     if letter_number > param_number
        remainder = letter_number - param_number
      elsif letter_number == param_number
        remainder = HIGHER_LIMIT_NUM - letter_number
      else
        remainder = param_number - letter_number
      end

    else
      remainder = letter_number + param_number
    end

      whole_letter_number = remainder + ascii_number
      whole_letter_number.chr #return number to letter
  end
end

