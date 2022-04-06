class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.references :book, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.integer :quantity, null: false, default: 3

      t.timestamps
    end
  end
end
