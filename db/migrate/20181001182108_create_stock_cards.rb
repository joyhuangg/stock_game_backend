class CreateStockCards < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_cards do |t|
      t.integer :user_id
      t.integer :company_id
      # t.float :quantity
      t.float :buy_price
      t.float :sell_price
      t.timestamps
    end
  end
end
