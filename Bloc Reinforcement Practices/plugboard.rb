# Description:
#
# In this series of Kata, we will be implementing a software version of the Enigma Machine.
#
# The Enigma Machine was a message enciphering/deciphering machine used during the Second World War for disguising the content of military communications. Alan Turing - the father of computing - formulated and developed concepts that are the basis of all computers in use today, he did this in response to the vital need to break those military communications. Turing and his colleagues at Bletchley Park are generally recognised as being responsible for shortening WWII by two years and saving an estimated 22 Million lives.
#
# The Enigma Machine consisted of a number of parts: Keyboard for input, rotors and plugboard for enciphering, and lampboard for output.
#
# We will simulate input and output with strings, and build the rotors, plugboard and mechanism that used them in software. As we progress the code will become more complex, so you are advised to attempt them in order.
#
# Step 1: The plugboard
#
# In this Kata, you must implement the plugboard.
#
# Physical Description
#
# The plugboard crosswired the 26 letters of the latin alphabet togther, so that an input into one letter could generate output as another letter. If a wire was not present, then the input letter was unchanged. Each plugboard came with a maximum of 10 wires, so at least six letters were not cross-wired.
#
# For example:
#
# If a wire connects A to B, then an A input will generate a B output and a B input will generate an A output.
# If no wire connects to C, then only a C input will generate a C output.
# Note
#
# In the actual usage of the original Enigma Machine, punctuation was encoded as words transmitted in the stream, in our code, anything that is not in the range A-Z will be returned unchanged.
#
# Kata
#
# The Plugboard class you will implement, will:
#
# Take a list of wire pairs at construction in the form of a string, with a default behaviour of no wires configured. E.g. "ABCD" would wire A <-> B and C <-> D.
# Validate that the wire pairings are legitimate. Raise an exception if not.
# Implement the process method to translate a single character input into an output.


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
