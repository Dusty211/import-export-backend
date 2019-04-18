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
  {name: "Lorp Tisdale", min_streetcred: 10, max_streetcred: 65, npc_karma: 50},
  {name: "Darden Pongo", min_streetcred: 30, max_streetcred: 100, npc_karma: 30},
  {name: "Big Cruz", min_streetcred: 50, max_streetcred: 100, npc_karma: 10},
  {name: "Little Cruz", min_streetcred: 50, max_streetcred: 100, npc_karma: 10},
  {name: "Coriander Whiplash DDS", min_streetcred: 0, max_streetcred: 50, npc_karma: 0},
  {name: "Douglas Smallmouth", min_streetcred: 50, max_streetcred: 100, npc_karma: 100},

]

allNpcs = npcs.map {|npc| Npc.create(npc)}

bananas = "Hey there old buddy! *Does this guy know me from somewhere?* I have a bunch of bananas I need to import, and you look like the type of individual who wants to do business! Whadda'ya say?"
logging_equip = "Hey there sport! Could you get this logging equipment to where it needs to go?"
stereo_equipment = "Hey bud, I have some stereo equipment that I got for cheap at a garage sale. I need to get it back to my family overseas. It's about 4 containers worth. They really like stereos. Are you in?"
eighties_memorabilia = "Hey guy, I have a bunch of vhs players, cassette tapes, and some props from the movie Scarface. You wanna ship it?"
car_parts = "Wanna make some nice side cash? All I need is for you to get these donated car parts where they need to go..."
jet_skis = "Hey bro, I'm trying to get these jet skis on the water fast. They're from an... estate sale. Yeah. I got them for real cheap. Are you in?"
duffel_bags = "I need to get a container of rare designer duffel bags to my overseas location. I heard you're the best at this sort of thing..."
expedition = 'Hey old chap! I have some of the most elaborate and exclusive treasure and loot. These are for my private collection and I need to get them overseas for a special museam event.'
replicas = "*Person who looks like they've been up for a week*: Hey...um....I like...have some replica watches and purses I need to ship here. Do you guys do financing?"
documents = "Can you keep a secret? These documents I am trying to import from a friend overseas are forged. I need someone to get them back here..."
medical= "I need to ship these supplies to the hurricane victims and you look like you could use a good deed or two... No offense."
textbooks= "Lookin' for a ship to but these textbooks on... The more space these books take up, the less space... I'm going to cut my self off there."


jobs = [
  {npc_id: allNpcs[0].id, streetcred_mod: -8, cargo: "Bananas", cargo_value: 1000, job_text: bananas},
  {npc_id: allNpcs[0].id, streetcred_mod: -8, cargo: "Logging equipment", cargo_value: 4000, job_text: logging_equip},
  {npc_id: allNpcs[1].id, streetcred_mod: -8, cargo: "Bananas", cargo_value: 1000, job_text: bananas},
  {npc_id: allNpcs[1].id, streetcred_mod: -8, cargo: "Logging equipment", cargo_value: 4000, job_text: logging_equip},
  {npc_id: allNpcs[2].id, streetcred_mod: 2, cargo: "Expedition", cargo_value: 5000, job_text: expedition},
  {npc_id: allNpcs[2].id, streetcred_mod: 5, cargo: "Stereo Equipment", cargo_value: 3500, job_text: stereo_equipment},
  {npc_id: allNpcs[3].id, streetcred_mod: 7, cargo: "80s Memorabilia", cargo_value: 9000, job_text: eighties_memorabilia},
  {npc_id: allNpcs[3].id, streetcred_mod: 6, cargo: "Donated car parts", cargo_value: 8000, job_text: car_parts},
  {npc_id: allNpcs[4].id, streetcred_mod: 6, cargo: "Used jet skis", cargo_value: 8000, job_text: jet_skis},
  {npc_id: allNpcs[4].id, streetcred_mod: 8, cargo: "Duffel Bags", cargo_value: 14000, job_text: duffel_bags},
  {npc_id: allNpcs[5].id, streetcred_mod: 6, cargo: "Used jet skis", cargo_value: 8000, job_text: jet_skis},
  {npc_id: allNpcs[5].id, streetcred_mod: 8, cargo: "Duffel Bags", cargo_value: 14000, job_text: duffel_bags},
  {npc_id: allNpcs[6].id, streetcred_mod: 10, cargo: "Replica Goods", cargo_value: 2000, job_text: replicas},
  {npc_id: allNpcs[6].id, streetcred_mod: 10, cargo: "Counterfeit Documents", cargo_value: 5000, job_text: documents},
  {npc_id: allNpcs[7].id, streetcred_mod: -10, cargo: "Medical Supplies", cargo_value: 8000, job_text: medical},
  {npc_id: allNpcs[7].id, streetcred_mod: -10, cargo: "Textbooks", cargo_value: 2000, job_text: textbooks},
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

  {job_id: all_jobs[4].id, morality: 0, criminality: 1, option_text: "Damn, bro. You look like that guy in all the archeology movies. I'm in."},
  {job_id: all_jobs[4].id, morality: -2, criminality: 2, option_text: "Not so fast bud. You seem like the type that could use a lighter wallet."},
  {job_id: all_jobs[4].id, morality: -5, criminality: 0, option_text: "I don't like snakes. Get lost."},
  {job_id: all_jobs[4].id, morality: 3, criminality: 1, option_text: "I've always wanted to go on an adventure. This shipment is on the house. Maybe you can return the favor."},

  {job_id: all_jobs[5].id, morality: -2, criminality: 8, option_text: "Yeah man, we deal with stereo equipment a lot in this business. I think we can help you out."},
  {job_id: all_jobs[5].id, morality: -5, criminality: 8, option_text: "Are you going to pay me the extra %50 speaker fee?"},
  {job_id: all_jobs[5].id, morality: 7, criminality: -7, option_text: "Someone stole the Blaupunkt out of my hatchback the other day! *As you chase the person while waving a hammer*"},
  {job_id: all_jobs[5].id, morality: -1, criminality: 13, option_text: "You have the new GC8400 XL 7000 preamp?!?!?! Can we be friends? How about this one's on the house? Wait, what happened to the packaging?"},

  {job_id: all_jobs[6].id, morality: -4, criminality: 9, option_text: "Something about this just doesn't feel right. I will do it just because that white suit is so badass."},
  {job_id: all_jobs[6].id, morality: -7, criminality: 9, option_text: "What the ^%&* kind of car is that you're driving? If you want the best shipping, you're going to have to do the best price..."},
  {job_id: all_jobs[6].id, morality: 8, criminality: -8, option_text: "I saw someone that looked like you on a documentary about a bunch of drug dealers."},
  {job_id: all_jobs[6].id, morality: -5, criminality: 5, option_text: "Look, I don't want to be involved with whatever is going on here. Just put it on the boat, but I don't want your money."},

  {job_id: all_jobs[7].id, morality: -5, criminality: 8, option_text: "*You chuckle* Hey man, I don't wanna know... You should probably load those at night."},
  {job_id: all_jobs[7].id, morality: -5, criminality: 8, option_text: "I really like shipping cars, but I like money better..."},
  {job_id: all_jobs[7].id, morality: 7, criminality: -7, option_text: "*You press a button under the counter to make a bunch of mercenaries seemingly appear from nowhere*"},
  {job_id: all_jobs[7].id, morality: -4, criminality: 5, option_text: "How about I just take one of those coupes instead of cash?"},

  {job_id: all_jobs[8].id, morality: -5, criminality: 8, option_text: "I didn't see anything... I will be out getting pancakes later. That would be a good time to load the cargo."},
  {job_id: all_jobs[8].id, morality: -8, criminality: 8, option_text: "Bro, I have a tee time in like 30 minutes. Can you get to the point? *you fan through the 100-stack you've been fiddling with*"},
  {job_id: all_jobs[8].id, morality: 10, criminality: -10, option_text: "You're that guy I saw on 60 Minutes. I'm calling the police."},
  {job_id: all_jobs[8].id, morality: -10, criminality: 5, option_text: "I know who you are. You're a legend, man. This one's on the house."},

  {job_id: all_jobs[9].id, morality: -5, criminality: 8, option_text: "This reminds me of the time when I did something I shouldn't have, and it ended up paying off bigtime.  I'm in."},
  {job_id: all_jobs[9].id, morality: -8, criminality: 8, option_text: "I think im good man, unless..."},
  {job_id: all_jobs[9].id, morality: 10, criminality: -10, option_text: "I have just the thing for this... *You go to the back room and call the authorities*"},
  {job_id: all_jobs[9].id, morality: -10, criminality: 5, option_text: "Your money is no good here. Let's get this stuff on the boat."},

  {job_id: all_jobs[10].id, morality: -5, criminality: 8, option_text: "I didn't see anything... I will be out getting pancakes later. That would be a good time to load the cargo."},
  {job_id: all_jobs[10].id, morality: -8, criminality: 8, option_text: "Bro, I have a tee time in like 30 minutes. Can you get to the point? *you fan through the 100-stack you've been fiddling with*"},
  {job_id: all_jobs[10].id, morality: 10, criminality: -10, option_text: "You're that guy I saw on 60 Minutes. I'm calling the police."},
  {job_id: all_jobs[10].id, morality: -10, criminality: 5, option_text: "I know who you are. You're a legend, man. This one's on the house."},

  {job_id: all_jobs[11].id, morality: -5, criminality: 8, option_text: "This reminds me of the time when I did something I shouldn't have, and it ended up paying off bigtime.  I'm in."},
  {job_id: all_jobs[11].id, morality: -8, criminality: 8, option_text: "I think im good man, unless..."},
  {job_id: all_jobs[11].id, morality: 10, criminality: -10, option_text: "I have just the thing for this... *You go to the back room and call the authorities*"},
  {job_id: all_jobs[11].id, morality: -10, criminality: 5, option_text: "Your money is no good here. Let's get this stuff on the boat."},

  {job_id: all_jobs[12].id, morality: -2, criminality: 8, option_text: "I usually don't deal with idiots, but this time I will make an exception."},
  {job_id: all_jobs[12].id, morality: -4, criminality: 10, option_text: "If you pay me extra, Santa will bring you extra stuff this year!"},
  {job_id: all_jobs[12].id, morality: 4, criminality: -4, option_text: "Someone who reminded me of you came in the other day. I also asked them to leave... *you point toward the door*"},
  {job_id: all_jobs[12].id, morality: -4, criminality: 0, option_text: "This is a good opportunity to get rep with the right people. I don't want your money. It will attract extra attention."},

  {job_id: all_jobs[13].id, morality: -2, criminality: 8, option_text: "Wow...alright...obviously YOU can't keep a secret. I really need the streetcred, so Ok, fine..."},
  {job_id: all_jobs[13].id, morality: -4, criminality: 10, option_text: "We just increased our prices yesterday. We haven't changed the signage yet."},
  {job_id: all_jobs[13].id, morality: 4, criminality: -4, option_text: "You are literally the stupidest person I think I have ever had the misfortune to cross paths with. Please leave now."},
  {job_id: all_jobs[13].id, morality: -4, criminality: 0, option_text: "*Your confusion overcomes you like a tidal wave* Just fill this out. I don't want to be tied to you financially, so don't worry about paying me."},

  {job_id: all_jobs[14].id, morality: 2, criminality: -8, option_text: "I usually don't deal with people from your side of the tracks, but this is good money."},
  {job_id: all_jobs[14].id, morality: 0, criminality: -5, option_text: "If you pay me a little extra, I will donate it to a charity of your choice..."},
  {job_id: all_jobs[14].id, morality: -4, criminality: 4, option_text: "Are you sure you're in the right place buddy? The country club is on the other side of town. I'll show you on a map."},
  {job_id: all_jobs[14].id, morality: 6, criminality: -10, option_text: "I did something... Well, let's just say I want to redeem myself. Don't worry about the money. I've got this."},

  {job_id: all_jobs[15].id, morality: 2, criminality: -8, option_text: "I hope nobody sees this. I will do it, but let's just meet up later."},
  {job_id: all_jobs[15].id, morality: 0, criminality: -5, option_text: "The more money you pay me, the more money I can put toward a good cause..."},
  {job_id: all_jobs[15].id, morality: -4, criminality: 4, option_text: "Shouldn't you be coaching little league somewhere or something? You are wrecking my image right now bro. Please get out of here before someone sees you."},
  {job_id: all_jobs[15].id, morality: 6, criminality: -10, option_text: "Will this offset that thing I did the other day? I guess let's see. This one's for charity."},
]

all_job_options = job_options.map {|option| JobOption.create(option)}

#
