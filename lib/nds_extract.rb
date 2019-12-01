require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)

total = 0 
row_index = 0 

director_counter = 0 
result = {
} 
 
while director_counter < nds.length do 
 director_name = nds[director_counter][:name]
 movie_counter = 0
 result[director_name] = 0 

  while movie_counter < nds[director_counter][:movies].count do 
   result[director_name] += nds[director_counter][:movies][movie_counter][:worldwide_gross]
   movie_counter += 1 
  end 

  director_counter += 1 
end 
  
result 
end 


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
movie_counter = 0 
counter = 0 
total = 0 

 while counter < director_data[:movies].length do 
  p director_data[:movies][movie_counter][:worldwide_gross]
  total += director_data[:movies][movie_counter][:worldwide_gross]
  counter += 1 
  movie_counter += 1 
 end 

total 
end
