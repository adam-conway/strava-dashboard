class AddOAuthFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :uid, :string
    add_column :users, :token, :string
    # add_column :users, :oauth_token_secret, :string
  end
end
