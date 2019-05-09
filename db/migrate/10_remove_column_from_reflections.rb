class RemoveColumnFromReflections < ActiveRecord::Migration[5.0]
  def change
    remove_column :reflections, :feeling_id
  end
end
