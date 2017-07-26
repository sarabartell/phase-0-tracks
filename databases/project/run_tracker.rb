require 'sqlite3'

runs = SQLite3::Database.new("runs.db")
runs.results_as_hash = true

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

def add_run(runs, length, time, day)
runs.execute("INSERT INTO runs (length, time, day) VALUES (?, ?, ?)", [length, time, day])
end

def remove_run(runs,day)
  runs.execute("DELETE FROM runs WHERE day=(?)", [day])
end

# add_run(runs, 4, '00:35:05','7/26/2017')
# remove_run(runs,'7/26/2017')
#UI