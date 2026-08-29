class Book
  @categories = []
  @books = {}
  @total_books = 0
  attr_reader :title, :category

  def self.register_category(category)
    return if @categories.include?(category)

    @categories << category
    @books[category] = 0
  end

  class << self
    attr_reader :total_books
  end

  def self.category_count(category)
    @books[category]
  end

  def same_category_count
    Book.category_count(category)
  end

  def self.increase_category_count(category)
    @books[category] += 1
  end

  def self.increase_total_books_count
    @total_books += 1
  end

  def self.category_registered?(category)
    @categories.include?(category)
  end

  def initialize(title, category)
    raise "There is no such category: #{category}" unless Book.category_registered?(category)

    puts "Creating a new book in #{category} category!"
    @category = category
    @title = title
    Book.increase_category_count(category)
    Book.increase_total_books_count
  end
end

class TechnicalBook < Book
end

Book.register_category('Programming')
Book.register_category('Machine Learning')
Book.register_category('Databases')

book1 = Book.new('The-Well Grounded Rubyist', 'Programming')
Book.new('Python Distilled', 'Programming')
Book.new('PostgreSQL 16 Administration Cookbook', 'Databases')
TechnicalBook.new('Metaprogramming Ruby', 'Programming')

puts book1.same_category_count
p Book.total_books
p TechnicalBook.total_books
