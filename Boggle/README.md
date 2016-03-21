This is a solution that came to my mind but it is far from being optimal! It enumerates
all the possible strings from a given board (using backtracking recursive algorithm)
and checks whether it's a valid word from a dictionary or not.

The dictionary is assumed to be a sorted array of words, and searching is done through
Ruby's Array#bsearch.

# Time Complexity
## Word Search
Binary search which has time complexity of O(log n), n being the length of the dictionary.

## String Enumeration

The number of every possible string with N^2 letters is (N^2)!, but for boggle it is much less
than that. For every location there's 8 options when all directions are not taken,
but due to the rules of the game it must be much less than 8^(N^2). The complexity
is certainly more than O(N^2), so my rough estimate would be O(2^N).

Overall the above two must be multiplied but as a result it still remains exponential.

* Note: The number of the strings can be calculated exactly for every N.

# Memory Complexity
Constant O(1)

# Ways of Improvement
The dictionary search can be improved by replacing the array with a hash, this
way the complexity reduces to O(1). But that doesn't improve the overall speed
much!

A redesigned algorithm can improve the complexity by storing the dictionary in
a different data structure. Internet calls is Trie (which I am very new to it).
This way, if a prefix doesn't match our dictionary, there's no need to continue
adding characters to it.

Storing a dictionary as a trie requires defining a TrieNode class and reading the
words of the dictionary in a LIFO stack style data structure, or doing it recursively
to create 26 roots.

The above two steps can now be merged together, e.g. 'AB_' is only added a letter when
dictionary has a 'AB' path. Then 'AB' becomes 'ABx' x being all the children of 'AB'
path in the dictionary.

The result is O(N^2)

# RSpec
The test file assumes there's a dictionary.txt file in the current directory.

# Does it handle words within words?
Yes as long as all the words are in the dictionary.
