class Person
  def self.people
    @people ||= []
  end

  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    Person.people << self
  end

  def add_hobby(hobby)
    @hobbies << hobby
  end

  def add_friend(friend)
    @friends << friend
  end

  def self.method_missing(method_name, *args)
    if method_name.start_with?('all_with_')
      attribute = method_name[9..]
      raise ArgumentError, "Can't find #{attribute}" unless public_method_defined?(attribute)

      people.find_all do |person|
        person.send(attribute).include?(args[0])
      end

    else
      super
    end
  end

  def self.respond_to_missing?(method_name, include_private = false)
    if method_name.start_with?('all_with_')
      attribute = method_name[9..]
      public_method_defined?(attribute) || super
    else
      super
    end
  end
end

e = Person.new('Eric J.')
r = Person.new('James')
e.add_friend(r)
e.add_hobby('Reading')
r.add_hobby('Painting')

h = Person.all_with_hobbies('Reading')
puts "#{h.first.name} is into #{h.first.hobbies.join(', ')}."
