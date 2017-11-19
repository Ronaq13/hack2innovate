class AddLenderCreditToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :lender_credit, :integer
  end
end
