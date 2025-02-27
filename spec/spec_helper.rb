require 'simplecov'
require 'simplecov-console'
require 'database_connection'

ENV['ENV'] = 'test'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

def reset_peeps_table
  seed_sql = File.read('spec/seeds/seeds_peeps.sql')
  connection = DatabaseConnection.connect
  connection.exec(seed_sql)
end

def reset_users_table
  seed_sql = File.read('spec/seeds/seeds_users.sql')
  connection = DatabaseConnection.connect
  connection.exec(seed_sql)
end

def reset_both_tables
  seed_sql = File.read('spec/seeds/seeds_both.sql')
  connection = DatabaseConnection.connect
  connection.exec(seed_sql)
end

def recreate_tables
  seed_sql = File.read('chitter_table.sql')
  connection = DatabaseConnection.connect
  connection.exec(seed_sql)
end

def delete_tables
  seed_sql = File.read('delete_table.sql')
  connection = DatabaseConnection.connect
  connection.exec(seed_sql)
end

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
