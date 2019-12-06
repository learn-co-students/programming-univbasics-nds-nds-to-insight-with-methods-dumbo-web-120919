require 'pry'

require 'directors_database'

def directors_totals(nds)
   hash = {} 
  i = 0
  while i < nds.length do 
   director_name = nds[i][:name]
   hash[director_name] = gross_for_director(nds[i])
   i += 1
  end
return hash
end
  
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  j = 0
  gross = 0 
   while j < director_data[:movies].length do 
   gross += director_data[:movies][j][:worldwide_gross]
   j += 1
 end
 return gross
end
