def bracket_matcher(str)
  queue = []
  str.each_char do |c|
    if c == "("
      queue << c
    elsif c == ")"
      queue.pop
    end
  end
  queue.empty? ? 1 : 0
end

p bracket_matcher("(c(oder)) b(yte)")
p bracket_matcher("())(")
p bracket_matcher("coder(b)(y)(t)(e))")