class AddAncestryToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :ancestry, :string
    add_index :accounts, :ancestry
  end

  def self.down
  	remove_index :accounts, :ancestry
    remove_column :accounts, :ancestry
  end
end
