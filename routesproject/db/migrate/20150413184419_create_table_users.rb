class CreateTableUsers < ActiveRecord::Migration
  def change
    create_table :table_users do |t|
      t.string :username
      t.timestamps
    end
  end
end
