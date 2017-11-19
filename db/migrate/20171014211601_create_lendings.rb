class CreateLendings < ActiveRecord::Migration[5.1]
  def change
    create_table :lendings do |t|
      t.integer :lender_id
      t.integer :borrower_id
      t.integer :amount

      t.timestamps
    end
  end
end
