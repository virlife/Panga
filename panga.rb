require_relative 'sites/ebay_fr_agent.rb'

abort "#{$0} product name" if ARGV.size != 1
product_name = ARGV[0]

products_hash = {}

eaby_agent = EbayFrAgent.new(product_name)


products_hash[eaby_agent.name] = eaby_agent.get_cheapest_product

puts products_hash

