require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  row = 0 
  while row < nds.length do
    total_for_each_director = 0
    column = 0 
    while column < nds[row][:movies].length do
      one_director = nds[row][:movies][column][:worldwide_gross]
      total_for_each_director += one_director
      column += 1
    end
    result[nds[row][:name]] = total_for_each_director
    row += 1
  end
  
  result
  # pp result
end


def gross_for_director(director_data)
  
  row =  0 
  total = 0 
  while row < director_data[:movies].length do
    total +=director_data[:movies][row][:worldwide_gross]
    row += 1    
  end
  total
end
