# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# names = ["Trump", "Fiorina", "Carson", "Clinton"]
# names.each do |name|
#   u = User.create(username: name)
#   Profile.create(last_name: name, :user => u, first_name: "Carly", gender: "female", birth_year: 1954)
# end

u = User.create(username: "Trump")
Profile.create(last_name: "Trump", first_name: "Donald", gender: "male", birth_year: 1946, :user => u)
list = TodoList.create(list_due_date: Date.today+1.year, :user => u)
5.times do |i|
  TodoItem.create(title: "blah", description: "foobar", :user => u, :todo_list => list, due_date: Date.today+1.year)
end
u = User.create(username: "Fiorina")
Profile.create(last_name: "Fiorina", first_name: "Carly", gender: "female", birth_year: 1954, :user => u)
list = TodoList.create(list_due_date: Date.today+1.year, :user => u)
5.times do |i|
  TodoItem.create(title: "blah", description: "foobar", :user => u, :todo_list => list, due_date: Date.today+1.year)
end
u = User.create(username: "Carson")
Profile.create(last_name: "Carson", first_name: "Ben", gender: "male", birth_year: 1951, :user => u)
list = TodoList.create(list_due_date: Date.today+1.year, :user => u)
5.times do |i|
  TodoItem.create(title: "blah", description: "foobar", :user => u, :todo_list => list, due_date: Date.today+1.year)
end
u = User.create(username: "Clinton")
Profile.create(last_name: "Clinton", first_name: "Hillary", gender: "female", birth_year: 1947, :user => u)
list = TodoList.create(list_due_date: Date.today+1.year, :user => u)
5.times do |i|
  TodoItem.create(title: "blah", description: "foobar", :user => u, :todo_list => list, due_date: Date.today+1.year)
end