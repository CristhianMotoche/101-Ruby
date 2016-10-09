# require 'byebug' # << Gem for debugging

class BubbleSort
  def initialize
  end

  def sort(array)
    # Using ranges
    for i in (1..array.length)
      for j in (0..(array.length - (i+1)))
        if array[j] > array[j+1]
          aux = array[j]
          array[j] = array[j+1]
          array[j+1] = aux
        end
      end
    end
    return array
  end
end

class QuickSort
  def initialize
  end

  def sort(array)
    return array if array.length < 1

    pivot = array[0]

    less, greater = array[1..-1].partition { |i| i < pivot }
    # debugger # Keyword for debug

    sort(less) + [pivot] + sort(greater)
  end
end
