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