# Sorting algorithms
Implement some of the classic sorting algorithms.

- Bubble sort
- Quick sort
- Merge sort
- Radix sort
- Heap sort

## What I've learn from this example:
- Ruby arrays are ordered, integer-indexed collections of any object
- Ruby arrays have positive and negative indexes
- You can use ranges to extract portions of an array
- **freeze method** - prevents modification to the Hash (returns the frozen object)
- The **numerouno** gem can be used to parse English numbers
- The central construct in Ruby iteration is the #each method, but there are others
like: each_with_index, reverse_each, etc.
- The #yield method calls the block you pass to #each.
- The #map method is like #each except it buils an Array out of the results of each block call..
- #each only returns the caller
- For classical iteration
- [ruby-lint](https://github.com/YorickPeterse/ruby-lint) static code analysis for Ruby
- **partition** function `[1,2,3,4].partition { |i| i > 3 } # [[4],[1,2,3]]`
- **Byebug** gem for debugging

# Notes

## Run

```shell
$ ruby main.rb --list [list] --order (asc/des)
```

## Test

```shell
$ ruby sorting_algorithms_test.rb
```

