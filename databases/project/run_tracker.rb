require 'sqlite3'

runs = SQLite3::Database.new("runs.db")

create_runs_table = <<-SQL
    CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    length DECIMAL(10,2),
    time TIME,
    day VARCHAR(255)
    )
SQL

runs.execute(create_runs_table)
# runs.execute("INSERT INTO runs (length,time,day) VALUES (3.2,'00:40:05','2/4/2017')")
