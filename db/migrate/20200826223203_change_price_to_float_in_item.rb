class ChangePriceToFloatInItem < ActiveRecord::Migration[6.0]
  def change
    change_table :items do |t|
      t.remove :price
      t.float :price
    end
  end
end
