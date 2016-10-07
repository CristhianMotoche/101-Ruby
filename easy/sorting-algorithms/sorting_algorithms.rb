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

