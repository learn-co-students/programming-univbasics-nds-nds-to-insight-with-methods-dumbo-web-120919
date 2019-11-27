require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  pp(nds)
  directorCounter = 0
  directorTotal = 0
while directorCounter < directors_database.length do
    movieCounter = 0
while movieCounter < directors_database[directorCounter][:movies].length do
    directorTotal += directors_database[directorCounter][:movies][movieCounter][:worldwide_gross]
    movieCounter += 1 
  end
  result[directors_database[directorCounter][:name]] = directorTotal
  directorTotal = 0
  directorCounter += 1 
end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)  
  directorTotal = 0
    movieCounter = 0
while movieCounter < director_data[:movies].length do
    directorTotal += director_data[:movies][movieCounter][:worldwide_gross]
    movieCounter += 1 
  end
directorTotal
end