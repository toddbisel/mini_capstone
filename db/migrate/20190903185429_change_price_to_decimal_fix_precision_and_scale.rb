class ChangePriceToDecimalFixPrecisionAndScale < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal, precision: 12, scale: 2
  end
end
