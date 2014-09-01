class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.decimal :price
      t.string :image_url
      t.integer :quantity
      t.integer :item_id
      t.references :cart, index: true

      t.timestamps
    end
  end
end
