import random
import os


def read_data(filepath="data.txt"):
    words = []
    with open(filepath, "r", encoding="utf-8") as f:
        for line in f:
            words.append(line.strip().upper())
    return words


def run():
  name = input("Please, tell me your name ")
  print("Welcome " + name + "! Good luck and let's play")
   
  print("We have a list with a few words and you will have to guess one of them letter by letter")
  print("Are you ready?")
  start = input()
  if start == "yes":
    print("Ok. Let's go!")
  elif start == "Yes":
    print("Ok. Let's go!")
  elif start == "YES":
    print("Ok. Let's go!")
  else:
    print("See you soon!")

  data = read_data(filepath="data.txt")
  secret_word = random.choice(data)
  secret_word_list = [letter for letter in secret_word]
  secret_word_list_underscores = ["_"] * len(secret_word_list)
  letter_index_dict = {}
  for idx, letter in enumerate(secret_word):
      if not letter_index_dict.get(letter): 
          letter_index_dict[letter] = []
      letter_index_dict[letter].append(idx)


  while True:
      print("Guess the word!")
      for element in secret_word_list_underscores:
          print(element + " ", end="")
      print("\n")

      letter = input("Choose a letter: ").strip().upper()
      assert letter.isalpha(), "Letters only please"
      if letter in secret_word_list:
          for idx in letter_index_dict[letter]:
              secret_word_list_underscores[idx] = letter
      
      if "_" not in secret_word_list_underscores:
          print("You win! This is the word: ", secret_word)
          break
  

if __name__ == '__main__':
    run()
