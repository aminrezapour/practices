def diagonalSum(matrix)
  sum = 0
  matrix.each_with_index.map{ |x,i| sum += x[i]}
  sum
end
