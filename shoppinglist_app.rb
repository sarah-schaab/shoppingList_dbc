#Create a shopping list program
#shopping list should have
# - id INTEGER PRIMARY KEY
# - item_name VARCHAR(255)
# - item_qty INT


# class ShoppingList
#   attr_reader
#   attr_accessor :listItems, :listName

#   def initialize(listname)
#     @listName = listName
#     @listItems = {}
#   end

#   def listname
#     @listname = listname
#   end

#   def add_item(item, quantity)

#   end

#   def remove_item(item)
#   end

#   def update_item_qty(item)
#   end

# end

# puts "Welcome to your shopping list!"
# puts "Please enter the title of your new list."
# new_list_name = gets.chomp
# new_list_name = ShoppingList.new(new_list_name)
# p new_list_name



#require sqlite gems

require 'sqlite3'

#create sqlite database

db = SQLite3::Database.new("ShoppingList.db")

#create a shoppingList table

create_table_cmd = <<-STRING
  CREATE TABLE IF NOT EXISTS shoppingList (
  id INTEGER PRIMARY KEY,
  item_name VARCHAR(255),
  item_qty INT
)
STRING


# list.execute(create_table_cmd)

# list.execute("INSERT INTO shoppingList (item_name, item_qty, acquired) VALUES ('oranges', 12, false);")