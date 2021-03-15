require 'sqlite3'

db = SQLite3::Database.new 'machine.db'

#db.execute "INSERT INTO Machine (NAME, PRICE) VALUES ('TOKARN', '35000')"

db.execute "SELECT * FROM Machine" do |ones|
	puts ones
	puts "===="
end
db.close