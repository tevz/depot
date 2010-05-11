class AddTestData < ActiveRecord::Migration
  def self.up
    Product.delete_all
    Product.create(:title => "Lololo",
      :description => "Krneki ...",
      :image_url => "http://ggg.com/hoi.jpg",
      :price => 1000)
  end

  def self.down
    Product.delete_all
  end
end
