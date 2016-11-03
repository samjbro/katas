def find_smallest_temp_range(file)
  weather_data = split_data(file,2,-2)
  weather_hash = hashify(weather_data, 0,1,2)
  find_smallest(weather_hash)
end

def find_smallest_goal_difference(file)
  football_data = split_data(file,1,-1)
  football_data.delete_at(17)
  football_hash = hashify(football_data, 1,6,8)
  find_smallest(football_hash)
end

def split_data(file, start, finish)
  file.read.lines.map(&:split)[start..finish]
end

def hashify(data, col1, col2, col3)
  data.map { |elem| [elem[col1], (elem[col2].to_i - elem[col3].to_i).abs] }.to_h
end

def find_smallest(hash)
  hash.key(hash.values.min)
end
