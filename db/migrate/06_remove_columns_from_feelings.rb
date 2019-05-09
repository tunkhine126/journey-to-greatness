class RemoveColumnsFromFeelings < ActiveRecord::Migration[5.0]
  def change
    remove_column :feelings, :user_id
    remove_column :feelings, :stress
  end
end
