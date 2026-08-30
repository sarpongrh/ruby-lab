class Ebook
  attr_reader :asset_id, :access_tier, :status

  def initialize(asset_id, access_tier, status)
    @asset_id = asset_id
    @access_tier = access_tier
    @status = status
  end

  def purchasable?
    unless @status == :published
      false
    else
      true
    end
  end

  def purchasable_with_negation?
    if !(@status == :published)
      false
    else
      true
    end
  end
end

class Reader
  attr_reader :reader_assets

  def initialize
    @reader_assets = []
  end

  def grant_entitlement(asset_id)
    @reader_assets << asset_id
  end

  def can_read?(ebook)
    if ebook.status != :published
      false
    elsif ebook.access_tier == :free
      true
    elsif @reader_assets.include?(ebook.asset_id)
      true
    else
      false
    end
  end
end

reader = Reader.new
p reader.reader_assets
reader.grant_entitlement('ebook-001')
p reader.reader_assets

ebook1 = Ebook.new('ebook-001', :paid, :published)
p reader.can_read?(ebook1)
p ebook1.purchasable?
p ebook1.purchasable_with_negation?

ebook2 = Ebook.new('ebook-002', :free, :draft)
p reader.can_read?(ebook2)
p ebook2.purchasable?
p ebook2.purchasable_with_negation?

ebook3 = Ebook.new('ebook-003', :free, :published)
p reader.can_read?(ebook3)

ebook4 = Ebook.new('ebook-004', :paid, :published)
p reader.can_read?(ebook4)
