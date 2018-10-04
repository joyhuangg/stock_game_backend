class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.decimal :money, scale: 2, precision: 30

      t.timestamps
    end
  end
end
