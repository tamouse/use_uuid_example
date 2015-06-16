class CreateTestTable < ActiveRecord::Migration
  def change
    create_table :test_tables, :id => false do |t|
      t.string :id, :null => false
      t.string :name
      t.timestamps
    end
    add_index :test_tables, :id, :unique => true
  end
end
