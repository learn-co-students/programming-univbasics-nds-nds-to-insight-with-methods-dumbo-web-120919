require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  row_index = 0
  directors_total = []
  while row_index < nds.length do
    total = 0
    total = gross_for_director(nds[row_index]) + total
    directors_total << total
    row_index += 1
  end
  return result = {
    "Stephen Spielberg" => directors_total[0],
    "Russo Brothers" => directors_total[1],
    "James Cameron" => directors_total[2],
    "Spike Lee" => directors_total[3],
    "Wachowski Siblings" => directors_total[4],
    "Robert Zemeckis" => directors_total[5],
    "Quentin Tarantino" => directors_total[6],
    "Martin Scorsese" => directors_total[7],
    "Francis Ford Coppola" => directors_total[8]
  }
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  column_index = 0
  director_total = 0
    while column_index < director_data[:movies].length do
      director_total = director_data[:movies][column_index][:worldwide_gross] + director_total
      column_index += 1
    end
 return director_total
end
