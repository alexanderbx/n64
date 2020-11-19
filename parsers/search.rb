require 'byebug'

html = Nokogiri.HTML (content)
products = html.css('#product-listing-container .ss-results .product')  #titulo ->  .card .card-title

byebug
products.each do |product|
    name = product.css('.card .card-title').text.strip
    price = product.css('.card-text .ng-scope').text.strip
    url = product.css('.ng-binding').attr('ng-href')
        page = {
            url: url,
            page_type: product,
            vars: {
                name: name, 
                price: price
            }
        }

        pages << page
end
