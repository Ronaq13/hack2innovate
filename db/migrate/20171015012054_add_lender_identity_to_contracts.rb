class AddLenderIdentityToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :lender_identity, :integer
  end
end
