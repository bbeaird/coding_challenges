def dash_insert_2(num)
  num = num.to_s
  prev = num[0]
  modified_num = ""
  modified_num += prev

  for i in 1..(num.length - 1)
    curr = num[i]
    if prev.to_i.even? && curr.to_i.even?
      modified_num += '*'
    elsif prev.to_i.odd? && curr.to_i.odd?
      modified_num += '-'
    end
    modified_num += curr
    prev = num[i]
  end
  modified_num
end

p dash_insert_2(8889991234)