def pitch_class note
  notes = {
    "C" => 0,
    "D" => 2,
    "E" => 4,
    "F" => 5,
    "G" => 7,
    "A" => 9,
    "B" => 11}

  return nil unless note =~/^[CDEFGAB][#b]?$/

  x = notes[note[0]]
  if note.length>1
    x += 1 if note[1] == '#'
    x -= 1 if note[1] == 'b'
  end

  if x == 12
    x = 0
  elsif x == -1
    x = 11
  end

  x

end
