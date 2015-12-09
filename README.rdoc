This is a Medical Reporting Application built using Ruby on Rails. This is a sample app and it uses SQLite instead of PostgreSQL.

To run this app locally do the following:
  - Open a terminal window and `cd` to the directory of this app
  - Run `bundle install` to install the gems and their dependencies
  - Run `rake db:setup` and `rake db:migrate` to setup and migrate the database
  - Then start the WEBrick server in development mode by running `rails server`
  - Once the server is up and ready to receive connections, open up a browser window and navigate to the address http://localhost:3000/ and you'll be able to see the app
  - You can optionally run `rspec --format doc` to see all the TDD tests and results
