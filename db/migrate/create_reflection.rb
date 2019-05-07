class CreateReflections < ActiveRecord::Migration[5.2]
    def change
      create_table :reflections do |table|
        table.string :name
        table.integer :date
        table.string :stress_lvl
        table.integer :user_id
      end
    end
  end 

    # attr_accessor :name, :date, :feeling, :user_id

    # def initialize(name, date, feeling, user_id= nil)
    #     @name = name 
    #     @date = date
    #     @feeling = feeling
    #     @user_id = user_id
    # end 

    # def self.create_table
    #     sql =  <<-SQL 
    #       CREATE TABLE IF NOT EXISTS reflections (
    #         id INTEGER PRIMARY KEY, 
    #         name TEXT, 
    #         date INTEGER,
    #         feeling TEXT,
    #         user_id INTEGER
    #         )
    #         SQL
    #     DB[:conn].execute(sql) 
    #   end

    #   def save
    #     sql = <<-SQL
    #       INSERT INTO reflections (name, date, feeling) 
    #       VALUES (?, ?)
    #     SQL
    #     DB[:conn].execute(sql, self.name, self.date, self.feeling)
    #     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM reflections")[0][0]
    #   end
  
    #     def self.create(name:, date:, :feeling)
    #       new_user = User.new(name, st_date)
    #       new_user.save
    #       new_user
    #     end