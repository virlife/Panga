require_relative 'agent.rb'

class EbayFrAgent < Agent
	def initialize(product_name)
		super(product_name)
		@@index = 'http://ebay.fr'
	end 
	
	def name
		:ebay_fr
	end 

	def get_cheapest_product 
		search_page = go_to_search({:id => 'gh-f'}, '_nkw')
		search_page.parser.css("table.li.rsittlref").each do |product|
			node = (product.css("div.ittl a"))[0]
			href = node['href']
			product_name = node.text

			node = (product.css('div[itemprop="price"]'))[0]
			price = node.text.strip

			compare_with_cheapest_product(product_name, href, price)
		end

		@cheapest_prodcut

	end
end