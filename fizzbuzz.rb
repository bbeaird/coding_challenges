def fizzbuzz(num)
  (1..num).each do |n|
    if n % 15 == 0
      p "fizzbuzz"
    elsif n % 3 == 0
      p "fizz"
    elsif n % 5 == 0
      p "buzz"
    else
      p n
    end
  end
end

fizzbuzz(100)