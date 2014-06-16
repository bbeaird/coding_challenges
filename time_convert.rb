def time_convert(num)
  return "#{num / 60}:#{num % 60}"
end

p time_convert(45)
p time_convert(145)

