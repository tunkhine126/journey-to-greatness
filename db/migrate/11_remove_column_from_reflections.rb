class RemoveColumnFromReflections < ActiveRecord::Migration[5.0]
  def change
    remove_column :reflections, :date
  end
end
