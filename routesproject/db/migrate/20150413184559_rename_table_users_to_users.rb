class RenameTableUsersToUsers < ActiveRecord::Migration
  def change
    rename_table(:table_users, :users)

  end
end
