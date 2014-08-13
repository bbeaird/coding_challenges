def multiple_brackets(str)
  split_str = str.split('')
  brackets_hash = { '(' => ')', '[' => ']' }
  queue = []
  pairs = 0
  split_str.each do |c|
    if brackets_hash[queue.last] == c
      queue.pop
      pairs += 1
    elsif brackets_hash.keys.include?(c) || brackets_hash.values.include?(c)
      queue << c
    end
  end
  return "1 #{pairs}" if queue.empty?
  return "0"
end

p multiple_brackets("(c([od]er)) b(yt[e])") # should output 1 5; 1 for yes and 5 for the pairs of brackets
p multiple_brackets("(coder)[byte)]") # should output 0