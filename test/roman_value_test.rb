require 'test_helper'
require_relative '../app/roman_number'

module Test
  class RomanValueTest < Test::Unit::TestCase

    def test_to_roman_method
     [[1,   "I"],
      [2,   "II"],
      [3,   "III"],
      [4,   "IV"],
      [44,  "XLIV"],
      [45,  "XLV"],
      [289, "CCLXXXIX"],
      [499, "CDXCIX"],
      [547, "DXLVII"]].each do |key|
        assert RomanNumber.new(key.first).to_roman == key.last
      end
    end
  end

end
