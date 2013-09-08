class AddFictionNonfiction < ActiveRecord::Migration
  def up
    add_column(:categories, :fiction, :boolean)
  end

  def down
    remove_column(:categories, :fiction)
  end
end
