
require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'


Clockwork.every(30.minutes, "Obtain latest prices") do
	Rails.logger.info "Telling workers to obtain the latest price data..."

	Product.select(:id).find_each do |p|
		Resque.enqueue(PriceGrabber, p.id)
	end

end
