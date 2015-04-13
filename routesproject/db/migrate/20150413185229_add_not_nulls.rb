class AddNotNulls < ActiveRecord::Migration
  def change
    change_column(:users, :username, :string, null: false)
    change_column(:contacts, :email, :string, null: false)
    change_column(:contacts, :name,:string, null: false)
  end
end
