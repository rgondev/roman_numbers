require 'test_helper'
require_relative '../app/roman_number'

module Test
  class RomanValueTest < Test::Unit::TestCase

    CASES = [
      [1,   "I"],
      [2,   "II"],
      [3,   "III"],
      [4,   "IV"],
      [44,  "XLIV"],
      [45,  "XLV"],
      [289, "CCLXXXIX"],
      [499, "CDXCIX"],
      [547, "DXLVII"],
      [879, "DCCCLXXIX"],
      [979, "CMLXXIX"],
      [1984, "MCMLXXXIV"],
      [2018, "MMXVIII"]
    ]

    CASES.each do |int,roman|
      define_method "test_#{int}" do
        assert_equal roman, RomanNumber.new(int).to_roman
      end
    end
  end

end
