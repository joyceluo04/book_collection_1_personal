class AddAuthorPriceDateToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :decimal
    add_column :books, :date, :date
  end
end
