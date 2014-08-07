# coins are 1, 5, 7, 9, 11
def coin_determiner(num)
  coins = [11, 9, 7, 5, 1]
  fewest_coins = num
  coins.length.times do |x|
    coins_used = []
    sum = 0
    coins.each_with_index do |c, i|
      until (sum + c) > num
        sum += c
        coins_used << c
        break if sum == num
      end
      fewest_coins = coins_used.length if coins_used.length < fewest_coins && sum == num
    end
    coins.shift
  end
  fewest_coins
end

p coin_determiner(25) # 3