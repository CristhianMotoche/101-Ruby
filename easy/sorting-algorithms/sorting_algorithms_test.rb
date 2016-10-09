require 'test/unit'
require_relative 'sorting_algorithms'

include Test::Unit::Assertions

class MyTest
  def self.setup
    @empty_array_test = []
    @array_test_even = [4,3,1,2]
    @array_test_odd = [4,5,3,1,2]
    @array_test_chars = ['e','d','a','b','c']
  end

  def self.run(sorting_algorithm)
    self.setup
    assert_equal [], sorting_algorithm.sort(@empty_array_test)
    assert_equal [1,2,3,4], sorting_algorithm.sort(@array_test_even)
    assert_equal [1,2,3,4,5], sorting_algorithm.sort(@array_test_odd)
    assert_equal ['a','b','c','d','e'], sorting_algorithm.sort(@array_test_chars)
  end
end

sorting_algorithm = BubbleSort.new
MyTest.run(sorting_algorithm)

sorting_algorithm = QuickSort.new
MyTest.run(sorting_algorithm)
