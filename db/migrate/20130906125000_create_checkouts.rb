class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :borrower
      t.datetime :checkout
      t.datetime :duedate

      t.timestamps
    end
  end
end
