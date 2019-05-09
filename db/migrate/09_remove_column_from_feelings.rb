class RemoveColumnFromFeelings < ActiveRecord::Migration[5.0]
  def change
    remove_column :feelings, :reflection_id
  end
end
