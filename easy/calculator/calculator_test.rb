require "test/unit"
require_relative "calculator"

include Test::Unit::Assertions

class MyTest
  def self.setup
    @calc = Calculator.new
  end

  # Static method
  def self.run
    setup
    assert_equal 7, @calc.plus(4,3)
    assert_equal 1, @calc.diff(4,3)
    assert_equal 12, @calc.prod(4,3)
    assert_equal 1, @calc.div!(4,3)
    # Assert raise exception
    assert_raise ZeroDivisionError do
      @calc.div!(4,0)
    end
  end
end

# Excecute tests
MyTest.run
