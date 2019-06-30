[Import/Export (Front End)](https://github.com/Dusty211/import-export-frontend)

## Import/Export (Back End)


## Features
- Fully persistent game files automatically save your progress as you play
- User profiles using OAuth and JWT tokens for login
- Expandable content through seed file

## Motivation for Import/Export
I had several motivations for creating this project. I wanted to:

- Learn more about creating an app with user profiles, login, and user-specific data
- Gain more experience with a user interface library
- Experience what it was like to design and balance probability models for game or program events

The amount of creative freedom allowed by creating a game was also very appealing.

## Made with:

- [Ruby Rails](https://github.com/rails/rails)
- [PostgreSQL](https://github.com/postgres/postgres)
- [Bcrypt-ruby](https://github.com/codahale/bcrypt-ruby)
- [Ruby-jwt](https://github.com/jwt/ruby-jwt)
- [Rack-cors](https://github.com/cyu/rack-cors)

## Code Examples:

Below are some examples of game data that are in the db/seeds.rb file.

To add context to the following code, the 'streetcred' of the npcs determines whether or not their missions will be available to you based on your character's current streetcred level. The 'npc_karma' will affect the success chance of the haggle dialog option (always the second option), depending on how similar it is to your character's karma.

On the Job example, the 'streetcred_mod' modifies the players current streetcred by the shown amount if the mission is successful.

On the dialog options examples, the 'morality' and 'criminality' values affect your characters stats as soon as the option is chosen.

#### NPC data and attributes in expandable seed file:

```ruby
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
```

#### Job example:

```ruby
{npc_id: allNpcs[5].id, streetcred_mod: 6, cargo: "Used jet skis", cargo_value: 8000, job_text: jet_skis}
```

#### Dialog options example:
```ruby
{job_id: all_jobs[7].id, morality: -5, criminality: 8, option_text: "*You chuckle* Hey man, I don't wanna know... You should probably load those at night."},
{job_id: all_jobs[7].id, morality: -5, criminality: 8, option_text: "I really like shipping cars, but I like money better..."},
{job_id: all_jobs[7].id, morality: 7, criminality: -7, option_text: "*You press a button under the counter to make a bunch of mercenaries seemingly appear from nowhere*"},
{job_id: all_jobs[7].id, morality: -4, criminality: 5, option_text: "How about I just take one of those coupes instead of cash?"},
```

## Development Environment Installation
#### Fork and clone the repo.

#### Install all packages with bundle:
`$ cd <root dir of clone>`  
`$ bundle install`

#### Create, migrate, and seed the database:
`$ rails db:create && rails db:migrate && rails db:seed`

#### Start the local rails dev server:
`$ rails s`

## License
MIT © Kyle Houghton
