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

###########################################################
# temporarily disable:
#
# users = [
#   {username: "testplayer", password: "password"},
#   {username: "kyle", password: "password"},
#   {username: "ross", password: "password"},
#   {username: "artem", password: "password"},
#   {username: "anthony", password: "password"},
#   {username: "hai", password: "password"},
#   {username: "phil", password: "password"},
#   {username: "ben", password: "password"},
#   {username: "andrea", password: "password"},
#   {username: "Chine", password: "password"},
#   {username: "shannon", password: "password"},
#   {username: "chris", password: "password"},
#   {username: "heloise", password: "password"},
#   {username: "mathew", password: "password"},
#   {username: "ryan", password: "password"},
#   {username: "shinik", password: "password"},
#   {username: "benjamin", password: "password"},
#   {username: "james", password: "password"},
#   {username: "serven", password: "password"}
# ]
#
# allUsers = users.map {|user| User.create(user)}
#
# allUsers.each_with_index do |user, index|
#   Gamestate.create(company_name: "Test Company #{index}a", cash: rand_cash, luck: rand_stat, karma: rand_stat, heat: rand_stat, streetcred: rand_stat, xships: rand_ships, ship_lvl: rand_ships, xmercs: rand_mercs, user_id: user.id)
#   Gamestate.create(company_name: "Test Company #{index}b", cash: rand_cash, luck: rand_stat, karma: rand_stat, heat: rand_stat, streetcred: rand_stat, xships: rand_ships, ship_lvl: rand_ships, xmercs: rand_mercs, user_id: user.id)
# end

############################################################

# npcs = [
#   {name: "Super Nice Person", min_streetcred: 0, max_streetcred: 30},
#   {name: "Very Nice Person", min_streetcred: 0, max_streetcred: 50},
#   {name: "Average Person", min_streetcred: 0, max_streetcred: 70},
#   {name: "Discheveled Person", min_streetcred: 20, max_streetcred: 85},
#   {name: "Sort of Shady Person", min_streetcred: 30, max_streetcred: 100},
#   {name: "Moderately Shady Person", min_streetcred: 50, max_streetcred: 100},
#   {name: "Master of Exceptional Shadiness", min_streetcred: 65, max_streetcred: 100},
#   {name: "Dr. Evil", min_streetcred: 75, max_streetcred: 100}
# ]

npcs = [
  {name: "Tom Swanson", min_streetcred: 0, max_streetcred: 70, npc_karma: 70},
  {name: "Jon Smith", min_streetcred: 0, max_streetcred: 70, npc_karma: 70},
  # {name: "Discheveled Person", min_streetcred: 20, max_streetcred: 85, npc_karma: 50},
  # {name: "Sort of Shady Person", min_streetcred: 30, max_streetcred: 100, npc_karma: 30},
  {name: "Big Cruz", min_streetcred: 50, max_streetcred: 100, npc_karma: 10},
  {name: "Little Cruz", min_streetcred: 50, max_streetcred: 100, npc_karma: 10},
]

allNpcs = npcs.map {|npc| Npc.create(npc)}

bananas = "Hey there old buddy! *Does this guy know me from somewhere?* I have a bunch of bananas I need to import, and you look like the type of individual who wants to do business! Whadda'ya say?"
logging_equip = "Hey there sport! Could you get this logging equipment to where it needs to go?"
steel_pipes = "Hey friend, I need to get these pipes up to Alaska stat. Are you the one for the job?"
tractors = "Howdy partner... These tractors need to get accross the ocean, and I cant't drive them there!  Do we have a deal?"
stereo_equipment = "Hey bud, I have some stereo equipment that I got for cheap at a garage sale. I need to get it back to my family overseas. It's about 4 containers worth. Are you in?"
eighties_memorabilia = "Hey guy, I have a bunch of vhs players, cassette tapes, and some props from the movie Scarface. You wanna ship it?"
car_parts = "Wanna make some nice side cash? All I need is for you to get these donated car parts where they need to go..."
jet_skis = "Hey bro, I'm trying to get these jet skis on the water fast. They're from an... estate sale. Yeah. I got them for real cheap. Are you in?"
duffel_bags = "I need to get a container of rare designer duffel bags to my overseas location. I heard you're the best at this sort of thing..."

jobs = [
  {npc_id: allNpcs[0].id, streetcred_mod: -8, cargo: "Bananas", cargo_value: 1000, job_text: bananas},
  {npc_id: allNpcs[0].id, streetcred_mod: -8, cargo: "Logging equipment", cargo_value: 4000, job_text: logging_equip},
  {npc_id: allNpcs[1].id, streetcred_mod: -8, cargo: "Bananas", cargo_value: 1000, job_text: bananas},
  {npc_id: allNpcs[1].id, streetcred_mod: -8, cargo: "Logging equipment", cargo_value: 4000, job_text: logging_equip},
  # {npc_id: allNpcs[1].id, streetcred_mod: -1, cargo: "Steel pipes", cargo_value: 2000, job_text: steel_pipes},
  # {npc_id: allNpcs[1].id, streetcred_mod: -1, cargo: "Tractors", cargo_value: 3000, job_text: tractors},
  # {npc_id: allNpcs[2].id, streetcred_mod: 3, cargo: "Stereo Equipment", cargo_value: 2000, job_text: stereo_equipment},
  # {npc_id: allNpcs[2].id, streetcred_mod: 3, cargo: "80s Memorabilia", cargo_value: 1500, job_text: eighties_memorabilia},
  # {npc_id: allNpcs[3].id, streetcred_mod: 6, cargo: "Donated car parts", cargo_value: 8000, job_text: car_parts},
  {npc_id: allNpcs[2].id, streetcred_mod: 6, cargo: "Used jet skis", cargo_value: 8000, job_text: jet_skis},
  {npc_id: allNpcs[2].id, streetcred_mod: 8, cargo: "Duffel Bags", cargo_value: 14000, job_text: duffel_bags},
  {npc_id: allNpcs[3].id, streetcred_mod: 6, cargo: "Used jet skis", cargo_value: 8000, job_text: jet_skis},
  {npc_id: allNpcs[3].id, streetcred_mod: 8, cargo: "Duffel Bags", cargo_value: 14000, job_text: duffel_bags},
]

all_jobs = jobs.map {|job| Job.create(job)}

job_options = [
  {job_id: all_jobs[0].id, morality: 3, criminality: 0, option_text: "That sounds like a great plan, Boss. Just fill this out and we'll get started."},
  {job_id: all_jobs[0].id, morality: -5, criminality: 0, option_text: "I'm trying to put a tennis court in behind my house and that's going to be wasted space on my boat. Let's talk figures..."},
  {job_id: all_jobs[0].id, morality: -3, criminality: 3, option_text: "Get out of here before one of my other customers robs you."},
  {job_id: all_jobs[0].id, morality: 10, criminality: 0, option_text: "I feel terrible about something I did earlier today. I'm going to pay it forward and ship these for you free of charge. That should make me feel less guilty."},

  {job_id: all_jobs[1].id, morality: 3, criminality: 0, option_text: "You betch'ya old buddy. "},
  {job_id: all_jobs[1].id, morality: -5, criminality: 0, option_text: "I'm worried about this job cutting into my bottom line. Can you do better on that figure?"},
  {job_id: all_jobs[1].id, morality: -3, criminality: 3, option_text: "Oh... That was awkward. I thought you were talking to someone behind me who cares. *You casually turn and walk away*"},
  {job_id: all_jobs[1].id, morality: 10, criminality: 0, option_text: "This stuff is going towards building schools? Why didn't you say? This one's on me, friend."},

  {job_id: all_jobs[2].id, morality: 3, criminality: 0, option_text: "That sounds like a great plan, Boss. Just fill this out and we'll get started."},
  {job_id: all_jobs[2].id, morality: -5, criminality: 0, option_text: "I'm trying to put a tennis court in behind my house and that's going to be wasted space on my boat. Let's talk figures..."},
  {job_id: all_jobs[2].id, morality: -3, criminality: 3, option_text: "Get out of here before one of my other customers robs you."},
  {job_id: all_jobs[2].id, morality: 10, criminality: 0, option_text: "I feel terrible about something I did earlier today. I'm going to pay it forward and ship these for you free of charge. That should make me feel less guilty."},

  {job_id: all_jobs[3].id, morality: 3, criminality: 0, option_text: "You betch'ya old buddy. "},
  {job_id: all_jobs[3].id, morality: -5, criminality: 0, option_text: "I'm worried about this job cutting into my bottom line. Can you do better on that figure?"},
  {job_id: all_jobs[3].id, morality: -3, criminality: 3, option_text: "Oh... That was awkward. I thought you were talking to someone behind me who cares. *You casually turn and walk away*"},
  {job_id: all_jobs[3].id, morality: 10, criminality: 0, option_text: "This stuff is going towards building schools? Why didn't you say? This one's on me, friend."},

  {job_id: all_jobs[4].id, morality: -5, criminality: 8, option_text: "I didn't see anything... I will be out getting pancakes later. That would be a good time to load the cargo."},
  {job_id: all_jobs[4].id, morality: -8, criminality: 8, option_text: "Bro, I have a tee time in like 30 minutes. Can you get to the point? *you fan through the 100-stack you've been fiddling with*"},
  {job_id: all_jobs[4].id, morality: 10, criminality: -10, option_text: "You're that guy I saw on 60 Minutes. I'm calling the police."},
  {job_id: all_jobs[4].id, morality: -10, criminality: 5, option_text: "I know who you are. You're a legend, man. This one's on the house."},

  {job_id: all_jobs[5].id, morality: -5, criminality: 8, option_text: "This reminds me of the time when I did something I shouldn't have, and it ended up paying off bigtime.  I'm in."},
  {job_id: all_jobs[5].id, morality: -8, criminality: 8, option_text: "I think im good man, unless..."},
  {job_id: all_jobs[5].id, morality: 10, criminality: -10, option_text: "I have just the thing for this... *You go to the back room and call the authorities*"},
  {job_id: all_jobs[5].id, morality: -10, criminality: 5, option_text: "Your money is no good here. Let's get this stuff on the boat."},

  {job_id: all_jobs[6].id, morality: -5, criminality: 8, option_text: "I didn't see anything... I will be out getting pancakes later. That would be a good time to load the cargo."},
  {job_id: all_jobs[6].id, morality: -8, criminality: 8, option_text: "Bro, I have a tee time in like 30 minutes. Can you get to the point? *you fan through the 100-stack you've been fiddling with*"},
  {job_id: all_jobs[6].id, morality: 10, criminality: -10, option_text: "You're that guy I saw on 60 Minutes. I'm calling the police."},
  {job_id: all_jobs[6].id, morality: -10, criminality: 5, option_text: "I know who you are. You're a legend, man. This one's on the house."},

  {job_id: all_jobs[7].id, morality: -5, criminality: 8, option_text: "This reminds me of the time when I did something I shouldn't have, and it ended up paying off bigtime.  I'm in."},
  {job_id: all_jobs[7].id, morality: -8, criminality: 8, option_text: "I think im good man, unless..."},
  {job_id: all_jobs[7].id, morality: 10, criminality: -10, option_text: "I have just the thing for this... *You go to the back room and call the authorities*"},
  {job_id: all_jobs[7].id, morality: -10, criminality: 5, option_text: "Your money is no good here. Let's get this stuff on the boat."},
]

all_job_options = job_options.map {|option| JobOption.create(option)}

#
