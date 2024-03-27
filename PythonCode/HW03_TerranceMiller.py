#HW3
# I attempted to speed up the program by utilizing only the neccessary amounts of code and trying
# to program as effeciently as possible.
#author_ = "Terrance Miller"
#_credits_ = ["Prof. Annexstien, Stack Overflow"]
#_email_ = "mille5th@mail.uc.edu"
url = "http://raw.githubusercontent.com/eneko/data-repository/master/data/words.txt"
import os
from urllib.request import urlopen
wordfile = urlopen(url)
words = wordfile.read().decode('utf-8').upper().split()

look_up = {}
for word in words:
  try:
    look_up[''.join(sorted(word))].append(word)
  except KeyError:
    look_up[''.join(sorted(word))] = [word]

alphabet_array = []
alphabet_dict = {}
for i in range (65, 91):
  alphabet_dict[chr(i)]=i
  alphabet_array.append(chr(i))

def step(word):
  sorted_string = sorted(word)
  output_values = []
  for i in alphabet_array:
    new_str = ''
    value_added = 0
    for j in range (0, len(sorted_string)):
      if value_added==0 and (alphabet_dict[sorted_string[j]] > alphabet_dict[i]):
        new_str += i
        value_added = 1
      new_str += sorted_string[j]
    if value_added==0:
      new_str += i
    try:
      output_values+=look_up[new_str]
    except KeyError:
      pass
  return output_values

if __name__ == '__main__':
  input_string = 'APPLE'
  print (step(input_string))
