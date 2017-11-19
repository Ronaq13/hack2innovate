class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.integer :lender_id
      t.integer :borrower_id
      t.integer :borrower_credit
      t.integer :borrower_identity
      t.integer :amount

      t.timestamps
    end
  end
end
