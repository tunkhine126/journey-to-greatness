class CreateFeelings < ActiveRecord::Migration[5.0]
  def change
    create_table :feelings do |t|
      t.string :stress
      t.integer :user_id
      t.integer :reflection_id
    end
  end
end
