html: Nokogiri.HTML (content)
products: html.css('#product-listing-container .ss-results')  #titulo ->  .card .card-title

products.each do |product|
    name = product.css('.card .card-title').text.strip
    price = product.css('.card-text .ng-scope').text.strip
end