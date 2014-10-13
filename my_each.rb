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