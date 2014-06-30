def third_greatest(str_arr)
  str_arr = str_arr.sort_by { |x| x.length }
  str_arr[-3]
end

def third_greatest2(str_arr)
  str_arr = str_arr.sort { |x, y| y.length <=> x.length }
  str_arr[2]
end

# p third_greatest(["abc","defg","z","hijk"])
p third_greatest2(["abc","defg","z","hijk"])
p third_greatest2(["coder","byte","code"])
p third_greatest2(["hello","world","world"])
p third_greatest2(["bt","ct","mtyyyy"])
