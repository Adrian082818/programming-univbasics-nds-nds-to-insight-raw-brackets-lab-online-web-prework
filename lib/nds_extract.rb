$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
def directors_totals(nds)
  
total = {}
row_index = 0 
while row_index < nds.length do
  directors_name = nds[row_index][:name]
  column_index = 0 
  total[directors_name] = 0 
  movies = nds[row_index][:movies]
  while column_index < movies.length do 
 directors_gross = movies[column_index][:worldwide_gross]
  total[directors_name] += directors_gross
  return total
  row_index += 1 
  column_index += 1
  pp directors_totals
end
end 
end 