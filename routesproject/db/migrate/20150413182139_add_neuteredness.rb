class AddNeuteredness < ActiveRecord::Migration
  def change
    add_column(:users, :neutered, :boolean)
    change_column(:users, :neutered, :boolean, null: false)
  end
end
