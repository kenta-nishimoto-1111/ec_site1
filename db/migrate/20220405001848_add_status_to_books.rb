class AddStatusToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :status, :integer, null: false, default: 1
  end
end
