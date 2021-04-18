def selection_sort(array)
  n = array.length - 1
  n.times do |i|
    index_of_min_val = i
    for j in (i + 1)..n
      index_of_min_val = j if array[j] < array[index_of_min_val]
    end
    array[i], array[index_of_min_val] = array[index_of_min_val], array[i] #swap values at same time
    #print array
  end
  array
end
  
array = [20, 22, 21, 5, 12, 12, 25, 4, 2, 9]
print selection_sort(array)

# puts "Enter comma separated integers: "
# values = gets.chomp
# print selection_sort(values.split(",").map(&:to_i))