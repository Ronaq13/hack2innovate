class AddIdentityScoreToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :identity_score, :integer
  end
end
