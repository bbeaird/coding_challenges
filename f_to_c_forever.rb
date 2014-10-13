def f_to_c_forever(temp)
  return "bananas" if temp < -30
  temp_new = (temp - 32) * 5 / 9
  p temp_new
  f_to_c_forever(temp_new)
end

p f_to_c_forever(212)