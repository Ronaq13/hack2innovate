class CreateRepayments < ActiveRecord::Migration[5.1]
  def change
    create_table :repayments do |t|
      t.integer :lender_id
      t.integer :borrower
      t.integer :amount

      t.timestamps
    end
  end
end
