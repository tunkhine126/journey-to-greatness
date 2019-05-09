class AddRemoveColumnsFromReflection < ActiveRecord::Migration[5.0]
  def change
    remove_column :reflections, :name
    add_column :reflections, :firstname, :string
    add_column :reflections, :lastname, :string
    add_column :reflections, :stress, :integer
    add_column :reflections, :title, :string
  end
end
