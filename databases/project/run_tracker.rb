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

create_miles_p_month = <<-SQL
  CREATE TABLE IF NOT EXISTS miles_p_month AS
  SELECT length, day, time
  FROM runs;
SQL

runs.execute(create_runs_table)
runs.execute(create_miles_p_month)

def add_run(runs, length, time, day)
runs.execute("INSERT INTO runs (length, time, day) VALUES (?, ?, ?)", [length, time, day])
end

def remove_run(runs,id)
  runs.execute("DELETE FROM runs WHERE id= ?", [id])
end

def update(runs,time,id)
  runs.execute("UPDATE runs SET time=(?) WHERE id=(?)", [time], [id])
end

def review(runs)
  runs = runs.execute("SELECT * FROM runs")
    runs.each do |runs|
      puts "#{runs['id']})You ran a #{runs['length']}mile run on #{runs['day']}, in #{runs['time']}."
    end
end

def avrg_miles(runs)
  total_runs = 0
  runs = runs.execute("SELECT * FROM runs")
  runs.each do |runs|
    total_runs += runs[1]
  end
  puts "You've run #{total_runs} miles so far!"
end

# add_run(runs, 4, '00:35:05','7/26/2017')
# remove_run(runs,'7/26/2017')
#update(runs,'00:42:35',1)


#UI
puts "--Welcome to Track My Run--"
puts "Store your runs with the following format:"
puts "length: 0.0"
puts "time: 00:00:00 (HR:MIN:SEC)"
puts "day: MM/DD/YEAR"

while true
  puts "Would you like to review, add, remove, or update a run? enter done when finished"
  function = gets.chomp

  function = function.downcase

  if function == "review"
    review(runs)
    avrg_miles(runs)
  end

  if function == "add"

      puts "Enter run length"
      length = gets.chomp

      puts "Enter run time"
      time = gets.chomp

      puts "Enter run day"
      day = gets.chomp

      add_run(runs, length, time, day)
  end

  if function == "remove"

    puts "Which number run would you like to remove?"
    id = gets.chomp

    remove_run(runs,id)
  end

  if function == "update"

    puts "Which run number would you like to update?"
    id = gets.chomp

    puts "What time do you want to change the run to?"
    time = gets.chomp

    update(runs,time,id)
  end

  if function == "done"
    break
  end
end

# runs = runs.execute("SELECT * FROM runs")
# runs.each do |runs|
#   puts "You ran a #{runs['length']} run on #{runs['day']}, in #{runs['time']}."
# end