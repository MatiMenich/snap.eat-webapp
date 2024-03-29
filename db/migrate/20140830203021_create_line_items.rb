class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :product, index: true
      t.belongs_to :cart, index: true
      t.integer :quantity, default: 1
      t.integer :price
      t.references :order, index: true

      t.timestamps
    end
  end
end
