require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  pp nds
  result = {}
  nil
  director_index = 0 #row 
      director_total = 0 
  while director_index < directors_database.length do
    movie_index = 0 #column
      while movie_index < directors_database[director_index][:movies].length do 
      director_total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
    
    movie_index += 1
    end
    result[directors_database[director_index][:name]] = director_total
    director_total = 0
    director_index += 1
  end  
  result
  pp result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0 
  index = 0 
  
  while index < director_data[:movies].length do 
    total += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end 
  total
  
end


