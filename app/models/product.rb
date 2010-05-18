class Product < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :price
  
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price
  validate :price_must_be_at_least_a_cent
  validates_format_of :image_url,
                        :with => %r{\.(gif|jpg|png)$}i,
                        :message => "Must be a URL for GIF, JPG or PNG"
  def self.find_products_for_sale
    find(:all, :order => "title")
  end
  protected
    def price_must_be_at_least_a_cent
      if price == nil || price < 0.01
        errors.add(:price, "Must be at least one cent")
      end
    end
    
end
