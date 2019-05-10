class CreateReflections < ActiveRecord::Migration[5.0]
  def change
    create_table :reflections do |t|
      t.integer  :user_id
      t.integer  :feeling_id
      t.datetime :date
      t.string   :title
      t.string   :entry
    end
  end
end
