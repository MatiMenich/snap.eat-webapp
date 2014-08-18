class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.references :table, index: true
      t.boolean :delivered

      t.timestamps
    end
  end
end
