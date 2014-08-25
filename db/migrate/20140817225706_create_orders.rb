class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :token
      t.references :table, index: true
      t.boolean :delivered

      t.timestamps
    end
  end
end
