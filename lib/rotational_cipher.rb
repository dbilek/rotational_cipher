class RotationalCipher
  def rot(word, number)
    @word = word
    @number = number.to_i
    array = []
    if @number < 0 || @number > 26
      puts "The number you're entered must be from 0 to 26, please enter a valid number"
    else
      @word.each_char.map do |letter|
        if letter =~ /[A-Za-z]/
           letter = check_letter(letter, @number)
           array << convert_to_ascii_letter(letter)
        else
        array << letter
        end
      end
    end
    result = array.join
    result
  end

  def convert_to_ascii_num(letter)
    ascii_number = letter.ord
    ascii_number
  end

  def convert_to_ascii_letter(number)
    letter = number.chr
    letter
  end

  def check_letter(letter, number)
    ascii_number =  letter =~ /[A-Z]/ ? 64 : 96
    letter = convert_to_ascii_num(letter)
    letter -= ascii_number
    if number == 26
      letter
    elsif (letter + number) > 26
      if letter > number
        letter -= number
      elsif letter == number
        letter = 26 - letter
      else
        letter = number - letter
      end
    else
      letter += number
    end
      letter += ascii_number
      letter
  end
end

