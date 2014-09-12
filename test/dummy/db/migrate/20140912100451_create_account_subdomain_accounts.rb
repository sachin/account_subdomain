class CreateAccountSubdomainAccounts < ActiveRecord::Migration
  def change
    create_table :account_subdomain_accounts do |t|
      t.string :subdomain

      t.timestamps
    end
  end
end