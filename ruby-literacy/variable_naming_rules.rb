# Valid variable names in ruby by type

# Local variable:
first_name = 'Richard'
puts first_name

# @first_name is an instance variable that belongs to each RubyLearner object.
class RubyLearner
  def initialize(first_name)
    @first_name = first_name
  end

  def introduce
    puts "Hello #{@first_name}"
  end
end

learner = RubyLearner.new('Ama')
learner.introduce

# @@session_count is shared state associated with the class hierarchy
# rather than with one individual StudySession object.
class StudySession
  @@session_count = 0

  def initialize
    @@session_count += 1
  end

  def self.session_count
    @@session_count
  end
end

StudySession.new
StudySession.new

puts StudySession.session_count

$learning_language = 'Ruby'

def display_learning_language
  puts $learning_language
end

display_learning_language
