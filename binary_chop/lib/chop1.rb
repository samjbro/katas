require 'pry-byebug'

  def chop(target, array)
    string = array.join('-')

    dash_counter = 0
    first_half = ""
    discarded_string = ""

    until string.count('-') == 0
      midpoint = string.count('-')/2
      dash_counter -= 1 if midpoint == 0
      string.each_char do |char|
        break if dash_counter == midpoint
        dash_counter += 1 if char == '-'
        first_half += char
        string[char] = ''
      end
      if '-' + first_half =~ /(-#{target}-)/
        string = first_half
        string[-1] = ''
      else
        discarded_string += first_half
      end
      first_half = ""
      dash_counter = 0
      break if midpoint == 0
    end

    return -1 unless string == target.to_s
    return discarded_string.count('-')

  end


#
# def chop(target, array)
#
#   string = array.join('-')
#   half_point = array.length/2
#
#   dash_counter = 0
#   first_half = ""
#   discarded_string = ""
#
#   # until string.count('-') <= 1
#   until string.split('-').length <= 1
#
#     until dash_counter == half_point do
#       dash_counter += 1 if string[0] == '-'
#       p ['first_half', first_half]
#       p ['string[0]', string[0]]
#       first_half += string[0]
#       string[0] = ''
#     end
#
#     p ['first half', first_half]
#     p ['second half', string]
#     p ['dash counter', dash_counter]
#
#     if '-' + first_half =~ /(-#{target}-)/
#       string = first_half
#     else
#       discarded_string += first_half
#     end
#     dash_counter = 0
#     first_half = ""
#     half_point = half_point/2
#   end
#
#   p ['string', string]
#   p ['discarded_string', discarded_string]
#   return -1 unless '-' + string + '-' =~ /(-#{target}-)/
#   p ['ENDING>>>', discarded_string]
#   discarded_string.count('-')
#
# end

  # def chop(target, array)
  #   hash = hashify(array)
  #   split_hash(target, hash)
  # end
  #
  # def hashify(array)
  #   hash = {}
  #   for i in 0..array.length-1
  #     array[i] = hash[array[i]] = i
  #   end
  #   hash
  # end
  #
  # def split_hash(target, hash)
  #   if(hash.length <= 1)
  #     hash.keys.first == target ? (return hash.values.first) : (return -1)
  #   end
  #   split = hash.each_slice((hash.length/2.0).ceil).to_a
  #   split.map! { |half| half = half.to_h }
  #
  #   split[0].keys.include?(target) ? split_hash(target, split[0]) : split_hash(target, split[1])
  # end

  # ---------

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

# --------
