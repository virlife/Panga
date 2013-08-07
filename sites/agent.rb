require 'rubygems'
require 'mechanize'

class Agent
	def initialize(product_name)
		@agent = Mechanize.new
		@product_name = product_name
		@@index = 'http://google.fr'
	end

	# go into the search page and enter the product name and submit
	# this function returns the search result page.
	def go_to_search(search_form_id, search_bar_name)
		search_form = @agent.get(@@index).form_with(search_form_id)
		search_form[search_bar_name] = @product_name
		page = @agent.submit(search_form)
	end


	# cheapest product = [name,href,price]
	def compare_with_cheapest_product(product_name, href, price)
		if defined? @cheapest_prodcut
			cheapest_price = @cheapest_prodcut[-1] 
			@cheapest_prodcut = [product_name,href,price] if price < cheapest_price
		else
			@cheapest_prodcut = [product_name,href,price]
		end
	end 
	
end 