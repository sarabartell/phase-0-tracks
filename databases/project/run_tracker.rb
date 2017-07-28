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

# create_miles_p_month = <<-SQL
#   CREATE TABLE IF NOT EXISTS miles_p_month AS
#   SELECT length, day, time
#   FROM runs;
# SQL

runs.execute(create_runs_table)
# runs.execute(create_miles_p_month)

def add_run(runs, length, time, day)
runs.execute("INSERT INTO runs (length, time, day) VALUES (?, ?, ?)", [length, time, day])
end

def remove_run(runs,id)
  runs.execute("DELETE FROM runs WHERE id= ?", [id])
end

def update_time(runs,time,id)
  runs.execute("UPDATE runs SET time=(?) WHERE id=(?)", [time], [id])
end

def update_length(runs,length,id)
  runs.execute("UPDATE runs SET length=(?) WHERE id=(?)", [length], [id])
end

def update_day(runs,day,id)
  runs.execute("UPDATE runs SET day=(?) WHERE id=(?)", [day], [id])
end

def review(runs)
  puts "---all runs----"
  runs = runs.execute("SELECT * FROM runs")
    runs.each do |runs|
      puts "#{runs['id']})You ran a #{runs['length']}mile run on #{runs['day']}, in #{runs['time']}."
    end
    puts "-------"
end

def avrg_miles(runs)
  total_runs = 0
  runs = runs.execute("SELECT * FROM runs")
  runs.each do |runs|
    total_runs += runs[1]
  end
  puts "You've run #{total_runs} miles so far!"
  puts "------"
end

def find_month(runs,month)
  total_p_month = 0
  puts "----#{month.capitalize} milage----"
  runs = runs.execute("SELECT * FROM runs")
  runs.each do |runs|
    split_day = runs[3].split("/")
       if split_day[0] == month
         total_p_month += runs[1]
       end
  end
  total_p_month
end

# add_run(runs, 4, '00:35:05','7/26/2017')
# remove_run(runs,'7/26/2017')
#update(runs,'00:42:35',1)
# update_day(runs,'JANUARY/26/2017',1)


#UI
puts "--Welcome to Track My Run--"
puts "Store your runs with the following format:"
puts "length: 0.0"
puts "time: 00:00:00 (HR:MIN:SEC)"
puts "day: MONTH/DD/YEAR (JANUARY/04/2017)"

while true
  puts "Would you like to `review`, `add`, `remove`, or `update` a run? enter `done` when finished"
  function = gets.chomp

  function = function.downcase

  if function == "review"
    puts "Enter 'all' to view all runs, or enter 'month' to view by month"
    type = gets.chomp
      if type == "all"
        review(runs)
        avrg_miles(runs)
      elsif type == "month"
        puts "which month do you want to see?"
        month = gets.chomp
        month = month.upcase
        total = find_month(runs,month)
        if total != 0
          puts "you ran #{total} miles in #{month.capitalize}!"
          else
          puts "you have no miles yet for #{month.capitalize}!"
        end
      end
  end

  if function == "add"
      puts "Enter run length"
      length = gets.chomp

      puts "Enter run time"
      time = gets.chomp

      puts "Enter run day"
      day = gets.chomp.split

      add_run(runs, length, time, day)
  end

  if function == "remove"
    puts "Which number run would you like to remove?"
    id = gets.chomp

    remove_run(runs,id)
  end

  if function == "update"
    puts "Which entry number would you like to update?"
    id = gets.chomp

    puts "Which value would you like to update?"
    value = gets.chomp
    if value == "time"
      puts "Enter new time value:"
      time = gets.chomp
      update_time(runs,time,id)
    end
    if value == "day"
      puts "Enter new day value:"
      day = gets.chomp
      update_day(runs,day,id)
    end
    if value == "length"
      puts "Enter new length value:"
      length = gets.chomp
      update_length(runs,length,id)
    end

  end

  if function == "done"
    break
  end
end