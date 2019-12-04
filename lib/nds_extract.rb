require "pry"

require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0 
while director_index < nds.length do 
  directors_name = nds[director_index]
# binding.pry
  result[directors_name[:name]] = gross_for_director(directors_name)
  
  director_index += 1 
end
return result 
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
# binding.pry 
movies = 0 
totals = 0 
while movies < director_data[:movies].length do 
    totals += director_data[:movies][movies][:worldwide_gross] 
    movies += 1 
  end 
  return totals
end
