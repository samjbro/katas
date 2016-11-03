# require 'pry-byebug'

# def chop(target, array)
#   halved_array = []
#   array.each_with_index do |number, index|
#     p "number #{index.to_s}: " + number.to_s
#     # halved_array.push(number)
#     array.delete(number) if index < array.length/2
#   end
#   chop(target, halved_array)
# end
# 
#
# def chop(target, array, counter=0)
#   if array.length <= 1
#     array.first == target ? (return counter) : (return -1)
#   end
#   midpoint = array.length/2
#   target < array[midpoint] ? array.reverse! : counter += midpoint
#   midpoint.times do |i|
#     array.delete(array.first)
#   end
#   chop(target, array.sort, counter)
# end
#
#
# p chop(3, [*1..10])
