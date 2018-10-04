class CreateStockCards < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_cards do |t|
      t.integer :user_id
      t.integer :company_id
      t.decimal :buy_price, scale: 2, precision: 30
      t.decimal :sell_price, sacle: 2, precision: 30
      t.timestamps
    end
  end
end
