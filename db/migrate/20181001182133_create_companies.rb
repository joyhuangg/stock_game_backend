class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :description
      t.decimal :price, scale:2, precision: 30
      t.string :name
      t.string :symbol
      t.decimal :high, scale:2, precision: 30
      t.decimal :low, scale:2, precision: 30
      t.decimal :open_price, scale:2, precision: 30
      t.decimal :close_price, scale:2, precision: 30
      t.timestamps
    end
  end
end
