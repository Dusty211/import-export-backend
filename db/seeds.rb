# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Gamestate.destroy_all
# Npc.destroy_all
# Job.destroy_all
# JobOption.destroy_all

def rand_cash
  rand 400000..800000
end

def rand_stat
  rand 37..65
end

def rand_ships
  rand 1..5
end

def rand_mercs
  rand 10..50
end


users = [
  {username: "testplayer", password: "password"},
  {username: "kyle", password: "password"},
  {username: "ross", password: "password"},
  {username: "artem", password: "password"},
  {username: "anthony", password: "password"},
  {username: "hai", password: "password"},
  {username: "phil", password: "password"},
  {username: "ben", password: "password"},
  {username: "andrea", password: "password"},
  {username: "Chine", password: "password"},
  {username: "shannon", password: "password"},
  {username: "chris", password: "password"},
  {username: "heloise", password: "password"},
  {username: "mathew", password: "password"},
  {username: "ryan", password: "password"},
  {username: "shinik", password: "password"},
  {username: "benjamin", password: "password"},
  {username: "james", password: "password"},
  {username: "serven", password: "password"}
]

allUsers = users.map {|user| User.create(user)}

# randUserData = []
# allUsers.each_with_index do |user, index|
#   randUserData.push({cash: rand_cash, luck: rand_stat, karma: rand_stat, heat: rand_stat, streetcred: rand_stat, xships: rand_ships, ship_lvl: rand_ships, xmercs: rand_mercs})
# end

allUsers.each_with_index do |user, index|
  Gamestate.create(company_name: "Test Company #{index}a", cash: rand_cash, luck: rand_stat, karma: rand_stat, heat: rand_stat, streetcred: rand_stat, xships: rand_ships, ship_lvl: rand_ships, xmercs: rand_mercs, user_id: user.id)
  Gamestate.create(company_name: "Test Company #{index}b", cash: rand_cash, luck: rand_stat, karma: rand_stat, heat: rand_stat, streetcred: rand_stat, xships: rand_ships, ship_lvl: rand_ships, xmercs: rand_mercs, user_id: user.id)
end
