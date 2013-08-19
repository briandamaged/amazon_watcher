class Product < ActiveRecord::Base

	monetize :list_price_cents
	monetize :current_price_cents
	monetize :target_price_cents

	# TODO: This is just a temporary hack to get the basic functionality
	#       working.  This will go away once I add more Model objects.
	before_validation do
		if self.target_price == 0
			self.target_price = self.current_price
		end
	end
end
