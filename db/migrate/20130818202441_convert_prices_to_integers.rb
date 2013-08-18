class ConvertPricesToIntegers < ActiveRecord::Migration
  def up

	remove_column :products, :list_price
  	remove_column :products, :current_price


  	add_money :products, :list_price
  	add_money :products, :current_price

  end
end
