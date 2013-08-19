class AddTargetPriceToProduct < ActiveRecord::Migration
  def change
  	add_money :products, :target_price
  end
end
