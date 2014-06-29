def third_greatest(str_arr)
  str_arr = str_arr.sort_by { |x| x.length }
  str_arr[-3]
end

p third_greatest(["abc","defg","z","hijk"])
