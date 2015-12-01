class Plugboard

  def initialize(wires = "")
    if wires.length % 2 > 0
      raise 'un-assigned character'
    end
    wires.split(//).each do |c|
      if c<'A' || c>'Z'
        raise 'character out of bound'
      end
    end
    if wires.split(//).length > wires.split(//).uniq.length
      raise 'duplicate association'
    end
    if wires.length > 20
      raise 'cannot be more than 10 pairs'
    end

    x = wires.split(//)
    @codes = Hash.new
    (0...(x.length)).step(2) do |i|
      @codes[x[i]] = x[i+1]
      @codes[x[i+1]] = x[i]
    end

  end

  def process(wire)
    @codes[wire] || wire
  end
end
