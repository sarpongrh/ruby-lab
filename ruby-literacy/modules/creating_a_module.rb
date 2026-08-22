module MyFirstModule
  def greet
    puts 'Hello'
  end
end

# Modules get mixed into classes using include method
class ModuleTester
  include MyFirstModule
end

mt = ModuleTester.new
mt.greet
