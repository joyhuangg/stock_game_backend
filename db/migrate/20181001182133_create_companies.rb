class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :description
      t.float :price
      t.string :name
      t.string :symbol
      t.float :high
      t.float :low
      t.float :open_price
      t.float :close_price
      t.timestamps
    end
  end
end
