$gvar = "I'm a global!"

class C
  def examine_global
    puts $gvar
  end
end
c = C.new
c.examine_global

# Local variables may lie close to each other physically
# But infact may have nothing whatsover to do with each other
class D
  a = 1
  def local_a
    a = 2
    puts a
  end
  puts a
end

d = D.new
d.local_a
