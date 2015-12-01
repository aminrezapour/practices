def list names
  name_arr = names.map{ |f| f[:name] }
  if name_arr.length == 0
    ""
  elsif name_arr.length == 1
    name_arr[0].to_s
  else
    name_arr[0...(name_arr.length-1)].join(', ').to_s + ' & ' + name_arr.last.to_s
  end
end
