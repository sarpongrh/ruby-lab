anonymous_class = Class.new do
  def say_hello
    puts 'Hello!'
  end
end

object = anonymous_class.new
object.say_hello
