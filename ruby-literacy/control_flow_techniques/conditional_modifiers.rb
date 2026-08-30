class Ebook
  attr_reader :status

  def initialize(status)
    @status = status
  end

  def purchase_block_reason
    'Ebook is not published' unless @status == :published
  end

  def publication_message
    'Ebook is available' if @status == :published
  end
end

ebook1 = Ebook.new(:published)
p ebook1.purchase_block_reason
p ebook1.publication_message

ebook2 = Ebook.new(:draft)
p ebook2.purchase_block_reason
p ebook2.publication_message
