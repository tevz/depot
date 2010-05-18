namespace :bootstrap do
  desc "Clear products and add sample products"
  task :sample_products => :environment do
    Product.delete_all
    Product.create(:title => "Pragmatic Version Control",
      :description =>
      %{<p>This book is a recipe-based approach
          ...
        </p>},
      :image_url => '/images/svn.jpg',
      :price => 28.50)
  end
end
