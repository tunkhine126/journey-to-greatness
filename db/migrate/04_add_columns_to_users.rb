class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :stress, :integer
    add_column :users, :entry, :string
  end
end
