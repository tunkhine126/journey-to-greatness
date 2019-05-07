class CreateAnimals < ActiveRecord::Migration[5.2]
        def change
          create_table :users do |table|
            table.string :name
            table.integer :date
          end
        end
      end

end 