class Product < ActiveRecord::Base

	monetize :list_price_cents
	monetize :current_price_cents

end
