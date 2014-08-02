def bracket_matcher(str)
  queue = []
  str.each_char do |c|
    # p queue
    if c == "("
      queue << c
    elsif c == ")" && !(queue.empty?)
      queue.pop
    elsif c == ')'
      queue << c
    end
  end
  queue.empty? ? 1 : 0
end

p bracket_matcher("(c(oder)) b(yte)")
p bracket_matcher("())(")
p bracket_matcher("coder(b)(y)(t)(e))")