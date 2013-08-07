
require 'rubygems'
require 'mechanize'

 # abort "#{$0} product name" if ARGV.size != 1
 # product_name = ARGV[0]

product_name = "clavier"

agent = Mechanize.new 

page = agent.get('http://ebay.fr')

search_form = page.form_with(:id => 'gh-f')
search_form['_nkw'] = product_name
page= agent.submit(search_form)

page.parser.css("table.li.rsittlref").each do |product|
	node = (product.css("div.ittl a"))[0]
	href = node['href']
	product_name = node.text

	node = (product.css('div[itemprop="price"]'))[0]
	price = node.text.strip

	puts "#{product_name} #{price} #{href}"

end

