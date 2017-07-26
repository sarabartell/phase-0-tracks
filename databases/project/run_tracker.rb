require 'sqlite3'

runs = SQLite3::Database.new("runs.db")

create_runs_table = <<-SQL
    CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    length INT,
    time TIME(),
    day DATE()
    )
SQL

runs.execute(create_runs_table)