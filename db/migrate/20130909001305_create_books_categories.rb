class CreateBooksCategories < ActiveRecord::Migration
  def change
    create_table :books_categories, id: false do |t|
      t.integer :book_id
      t.integer :category_id

      t.timestamps
    end
  end

  def up
    drop_table :categorizations
  end

  def down
    create_table :categorizations do |t|
      t.integer :book_id
      t.integer :category_id

      t.timestamps
    end
  end
end
