class Word < String
  def palindrome?
    self == self.reverse
  end
end

w = Word.new("asdf")
p w.palindrome?

w = Word.new("level")
p w.palindrome?