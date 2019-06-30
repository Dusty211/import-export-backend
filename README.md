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

Below is the block of code that is responsible for the caching behavior of the arrival data. The data relationship between stations and arrivals is one to many, respectively. That is to say that a station has many arrivals, and an arrival belongs to a station. The last arrival update is timestamped in DateTime format on the station's table. This is what the code below is checking for. If the timestamp does not exist, or if it is older than 20 seconds, arrival data is fetched from WMATA's API. If the timestamp is newer than 20 seconds, no new API call is made, and the existing data is used.

#### Fetch new Data?

```ruby
if !station.arrivals_updated
  update_arrivals(station)
  puts "/////////////////////////////////NEVER BEEN UPDATED"
  return station.arrivals
elsif DateTime.now.to_time - station.arrivals_updated.to_time > 20
  station.arrivals.destroy_all
  update_arrivals(station)
  puts "/////////////////////////////////OVER 20 SECONDS OLD"
  return station.arrivals
else
  puts "/////////////////////////////////FRESH ARRIVALS"
  return station.arrivals
end
```

#### update_arrivals:

```ruby
def update_arrivals(station)
  color = {
    "GR" => "green",
    "BL" => "blue",
    "SV" => "silver",
    "RD" => "red",
    "OR" => "orange",
    "YL" => "yellow"
  }
  UpdateDb.arrivals_data(station.code).each do |arrival|
    new_arrival = Arrival.create(
      cars: arrival["Car"],
      destination: arrival["DestinationName"],
      line: color[arrival["Line"]],
      minutes: arrival["Min"]
     )
     station.arrivals << new_arrival
  end
  station.update!(arrivals_updated: DateTime.now)
end
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
