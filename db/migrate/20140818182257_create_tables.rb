class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :number
      t.string :place
      t.string :uid

      t.timestamps
    end
  end
end
