def bubble_sort(arr)
  swaps = 0
  first_index = 0
  second_index = 1

  while second_index < arr.size
    first_element = arr[first_index]
    second_element = arr[second_index]

    if first_element > second_element
      arr[first_index] = second_element
      arr[second_index] = first_element
      swaps += 1
    end
    first_index += 1
    second_index += 1
  end

  return bubble_sort(arr) unless swaps == 0
  arr
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [1, 2, 3, 4]"
  print "=> "
  print bubble_sort([3, 2, 1, 4])

  puts

  puts "Expecting: [1, 2, 3]"
  print "=> "
  print bubble_sort([1, 2, 3])

  puts

  puts "Expecting: []"
  print "=> "
  print bubble_sort([])

  puts

  puts "Expecting: [1, 2, 3]"
  print "=> "
  print bubble_sort([2, 3, 1])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
