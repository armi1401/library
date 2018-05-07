class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.references :book_id
      t.references :user_id
      t.datetime :borrow_from
      t.datetime :borrow_to
      t.timestamps
    end
  end
end
