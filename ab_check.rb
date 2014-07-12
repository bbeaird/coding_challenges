# Returns true if there are exactly 3 chars between a and b.

def ab_check(str)
  return true if str.index(/[a]...[b]/)
  return true if str.index(/[b]...[a]/)
  return false
end

p ab_check("wwwwafffbwwww")
p ab_check("wwwwa   bwwww")
p ab_check("wwwwa 4 bwwww")
p ab_check("wwwwa bwwww")
p ab_check("wwwwa 555 bwwww")