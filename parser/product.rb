html: Nokogiri.HTML (content)
condition = html.css('.productView-info-value').text.strip

outputs << {
    _collection: 'products',
    status = 'condition',
    name: page['vars']['name'],
    price: page['vars']['price']
}