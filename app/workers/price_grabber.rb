
require 'amazon_deets'

class PriceGrabber

	@queue = :price_grabber

	def self.perform(product_id)
		p = Product.find(product_id)

		if p
			g = AmazonDeets::Grabber.new
			deets = g.grab(p.url)

			p.update_attributes(deets)

			Rails.logger.info("Updated product: #{ p.id }")

			ProductMailer.target_price_reached(p).deliver
		end
	end

end

