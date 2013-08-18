class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :url
      t.decimal :list_price
      t.decimal :current_price
      t.decimal :rating
      t.integer :reviews

      t.timestamps
    end

    add_index :products, :url, name: "products_url_index"
  end
end
