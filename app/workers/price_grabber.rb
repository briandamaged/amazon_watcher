
require 'amazon_deets'

class PriceGrabber

	@queue = :price_grabber

	def self.perform(product_id)
		p = Product.find(product_id)

		if p
			s = AmazonDeets.create_scraper
			deets = s.scrape(p.url)

			p.update_attributes(deets)

			Rails.logger.info("Updated product: #{ p.id }")

			if p.current_price < p.target_price
				ProductMailer.target_price_reached(p).deliver
			end
		end
	end

end

