class CreateReflections < ActiveRecord::Migration[5.0]
  def change
    create_table :reflections do |t|
      t.string :name
      t.datetime :date
      t.integer :feeling_id
    end
  end
end
