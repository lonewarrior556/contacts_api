class RemoveNeuteredFromUsers < ActiveRecord::Migration
  def change
    remove_column( :users, :neutered)
  end
end
