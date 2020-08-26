class AddCategoryPriceToItem < ActiveRecord::Migration[6.0]
  def change
    change_table :items do |t|
      t.text :category
      t.integer :price
    end
  end
end
