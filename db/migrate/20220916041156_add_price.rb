class AddPrice < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :price, :decimal
  end
end
