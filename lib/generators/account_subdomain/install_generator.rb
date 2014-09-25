module AccountSubdomain
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      include Rails::Generators::Migration

      desc "Creates a AccountSubdomain initializer."
      def copy_initializer
        template "account_subdomain.rb", "config/initializers/account_subdomain.rb"
      end

      def copy_account_subdomain_migration
        migration_template 'migration.rb', 'db/migrate/create_account_subdomain_accounts.rb'
      end

      # Implement the required interface for Rails::Generators::Migration.
      def self.next_migration_number(dirname)
        next_migration_number = current_migration_number(dirname) + 1
        ActiveRecord::Migration.next_migration_number(next_migration_number)
      end
    end
  end
end