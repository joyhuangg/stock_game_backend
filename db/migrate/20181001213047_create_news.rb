class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :headline
      t.string :url
      t.string :source
      t.string :summary
      t.string :image
      t.integer :company_id
      t.string :related
      t.datetime :datetime
      t.timestamps
    end
  end
end
