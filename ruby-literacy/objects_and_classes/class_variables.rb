class Book
  @@categories = []
  @@books = {}
  attr_reader :category, :title

  def self.register_category(category)
    return if @@categories.include?(category)

    @@categories << category
    @@books[category] = 0
  end
  @@total_books = 0
  def self.total_books
    @@total_books
  end

  def initialize(title, category)
    raise "There is no such category: #{category}." unless @@categories.include?(category)

    puts "Creating a new book in  #{category} category!"
    @category = category
    @title = title
    @@books[category] += 1
    @@total_books += 1
  end

  def same_category_count
    @@books[category]
  end
end

class TechnicalBook < Book
end

Book.register_category('Programming')
Book.register_category('Machine Learning')

book1 = Book.new('The-Well Grounded Rubyist', 'Programming')
Book.new('Mathematics for Machine Learning', 'Machine Learning')

puts book1.title
puts book1.category
puts book1.same_category_count

TechnicalBook.new('Metaprogramming', 'Programming')
puts Book.total_books
puts TechnicalBook.total_books
