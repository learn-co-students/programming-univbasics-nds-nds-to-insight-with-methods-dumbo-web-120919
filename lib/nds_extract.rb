require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  #hash of director/total pairs
  result = {}
  
  #director iterator
  director_element = 0
  #iterate through directors
  while director_element < nds.length do
    #add director/gross pay to result hash
    result["#{nds[director_element][:name]}"] = gross_for_director(nds[director_element])
    #increase director iterator
    director_element += 1
  end
  #return results hash
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #total gross for director
  director_total = 0
  #movie iterator
  movie_element = 0
  #iterate through movies
  while movie_element < director_data[:movies].length do
    #add movie gross to total for director
    director_total += director_data[:movies][movie_element][:worldwide_gross]
    #increase movie iterator
    movie_element += 1
  end
  return director_total
end





