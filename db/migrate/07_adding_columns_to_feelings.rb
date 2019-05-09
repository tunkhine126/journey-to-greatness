class AddingColumnsToFeelings < ActiveRecord::Migration[5.0]
  def change
    add_column :feelings, :stress, :integer
    add_column :feelings, :date, :timestamp
  end
end
