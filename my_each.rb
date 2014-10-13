class Array
  def my_each
    c = 0
    until c == self.length
      yield(self[c])
      c += 1
    end
    self
  end
end

[10, 20, 30].my_each { |x| puts "Here is each array value squared...#{x**2}!!!" }
p [10, 20, 30].my_each { |x| puts "Here is each array value squared...#{x**2}!!!" }

# now let's implement my_times using my_each!!!!!!!!!!!

class Integer
  def my_times
    (0..(self - 1)).to_a.my_each do |i|
      yield(i)
    end
    self
  end
end

5.my_times { |i| puts "my_times implementation on iteration number #{i}!!!"}
p 5.my_times { |i| puts "my_times implementation on iteration number #{i}!!!"}

class Array
  def my_map
    c = 0
    return_value = []
    until c == self.size
      return_value << yield(self[c])
      c += 1
    end
    return_value
  end
end

[5, 10, 15].my_map { |n| p n**3 }
p [5, 10, 15].my_map { |n| p n**3 }