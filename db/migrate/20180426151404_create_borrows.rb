class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.references :book
      t.references :user
      t.timestamps
    end
  end
end
