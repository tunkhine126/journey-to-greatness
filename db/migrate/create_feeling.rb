class CreateFeelings < ActiveRecord::Migration[5.2]
    def change
      create_table :feelings do |table|
        table.string :reflection_id
        table.integer :user_id
        table.string :stress_lvl
      end
    end
  end


    # attr_accessor :reflection, :user_id, :stress_lvl

    # def initialize(relfection, user_id, stress_lvl)
    #     @reflection = reflection
    #     @user_id = user_id 
    #     @stress_lvl = stress_lvl
    # end 

    # def self.create_table
    #     sql =  <<-SQL 
    #       CREATE TABLE IF NOT EXISTS feelings (
    #         id INTEGER PRIMARY KEY, 
    #         reflection TEXT, 
    #         user_id INTEGER,
    #         stress_lvl INTEGER
    #         )
    #         SQL
    #     DB[:conn].execute(sql) 
    #   end

    #   def save
    #     sql = <<-SQL
    #       INSERT INTO feelings (reflection, user_id, stress_lvl) 
    #       VALUES (?, ?)
    #     SQL
    #     DB[:conn].execute(sql, self.reflection, self.user_id, self.stress_lvl)
    #     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM feelings")[0][0]
    #   end
  
    #     def self.create(reflection:, user_id:, :stress_lvl)
    #       new_user = User.new(name, st_date)
    #       new_user.save
    #       new_user
    #     end









end