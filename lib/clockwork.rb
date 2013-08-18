
require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

every(30.minutes, "Obtain latest prices") do
	Product.select(:id).find_each do |p|
		puts p.id
	end
end
