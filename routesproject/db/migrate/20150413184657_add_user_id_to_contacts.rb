class AddUserIdToContacts < ActiveRecord::Migration
  def change
    add_column(:contacts, :user_id, :integer)
    change_column(:contacts, :user_id, :integer, null: false)
  end
end
