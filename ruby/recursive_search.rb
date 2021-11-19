def recursive_search(arr, target)
  if arr.last == target
    return true
  elsif arr.last
    arr.pop
    recursive_search(arr, target)
  else
    return false
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: true"
  puts "=>", recursive_search([1, 2, 3], 2)

  puts

  puts "Expecting: false"
  puts "=>", recursive_search([3, 2, 1], 4)

  puts

  puts "Expecting: false"
  puts "=>", recursive_search([], 4)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
# The function takes the arr and compares the last element to the target, if that is false,
# It checks to see if arr.last exist, if so it removes the last element and calls itself with the
# recently changed array and the same target, if the last element does not exist it returns false.