class RomanNumber
  attr_accessor :number

  # Table that transforms decimal into a roman number
  TRANSFORMATION_TABLE = [[1,   "I" ],
                          [4,   "IV"],
                          [5,   "V" ],
                          [9,   "IX"],
                          [10,  "X" ],
                          [40,  "XL"],
                          [50,  "L" ],
                          [90,  "XC"],
                          [100, "C" ],
                          [400, "CD"],
                          [500, "D" ],
                          [900, "CM"],
                          [1000,"M" ]]

  ##
  # Initializer
  def initialize(number)
    self.number = number
  end

  ##
  # Method that returns the number transformed into roman writing
  def to_roman
    roman_recursive(number)
  end

  ##
  # Recursive function
  # If number is less or equal than zero, return empty string
  # else search in TRANSFORMATION_TABLE decimal values in reverse order
  # When it founds a value it substracts the value of the letter and continue
  # recursive process until number is zero
  def roman_recursive(number)
    return "" if number <= 0
    TRANSFORMATION_TABLE.reverse.each do |key|
      letter_value, letter_string = key
      if number >= letter_value
        return letter_string + roman_recursive(number - letter_value)
      end
    end
  end
end
