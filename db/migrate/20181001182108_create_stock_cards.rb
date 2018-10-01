class CreateStockCards < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_cards do |t|
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
