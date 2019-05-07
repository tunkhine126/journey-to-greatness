class User < ActiveRecord::Base
end

# attr_accessor :name, :date 
    # attr_reader :id 

    # def initialize(name, st_date, id= nil)
    #     @name = name 
    #     @st_date = date
    #     @id = id  
    # end 

    # def self.create_table
    #     sql =  <<-SQL 
    #       CREATE TABLE IF NOT EXISTS users (
    #         id INTEGER PRIMARY KEY, 
    #         name TEXT, 
    #         st_date INTEGER
    #         )
    #         SQL
    #     DB[:conn].execute(sql) 
    #   end

    #   def save
    #     sql = <<-SQL
    #       INSERT INTO users (name, st_date) 
    #       VALUES (?, ?)
    #     SQL
    #     DB[:conn].execute(sql, self.name, self.st_date)
    #     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM users")[0][0]
    #   end
  
    #     def self.create(name:, st_date:)
    #       new_user = User.new(name, st_date)
    #       new_user.save
    #       new_user
    #     end