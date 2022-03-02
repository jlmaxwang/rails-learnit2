class AddPriceToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :price, :decimal
  end
end
