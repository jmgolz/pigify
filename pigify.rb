# Create a "pig latin" translator, using a test-driven approach. 
# In the past I've given you the tests to run, but this time you'll create your own from scratch.

# Here is one approach to creating an API for your translator:

# PigLatin.translate "hello" # => "ellohay"
# I'll leave that decision up to you, but I do want you to include a full test suite that uses all the phrases I give below. 
# They start from simple words and move on to phrases with capitalization and punctuation that should be preserved. 
# You might need to use some Regular Expressions to get that done.

# Remember to start simple, write a test for the first word, "human" and get it working, upping the complexity and refactoring your code as you go. 
# Use past assignments for ideas on how to structure your project.

# Phrases:

#   human
#   transformation
#   occupying
#   combat complains
#   The Resemblance Mutters
#   15 Dangerous Facts Electricians Keep To Themselves
#   The unpopular glory renames an ice!

# Translations:

#   umanhay
#   ansformationtray
#   occupyingyay
#   ombatcay omplainscay
#   ethay esemblanceray uttersmay
#   Ethay Esemblanceray Uttersmay
#   15 Angerousday Actsfay Electriciansyay Eepkay Otay Emselvesthay
#   Ethay unpopularyay oryglay enamesray anyay iceyay!

# Bonus: Extend ruby's string class to be able to pigify a string:
#   "Hello".pigify # => "Ellohay"

class PiglatinTranslate
	attr_reader :output_string

	def initialize()
		@output_string	= nil
		@postfix		= "ay"
	end
	
	def human_readable_string_to_piglatin(input_string, delimiter=" ")
		word_array = input_string.split(delimiter);		
		temp_arrray = []

		word_array.each{ |word| 
			if(word[/[\d]/] != nil)
				temp_arrray << word
				next
			else
				if(word[/^[aeiou]/i] != nil)
					temp_arrray << word + @postfix
				else
					temp_arrray << word[1..999] + word[0] + @postfix
				end
			end
		}

		@output_string = temp_arrray.join(delimiter)

	end

	def piglatin_string_to_human_readable(input_string, delimiter=" ")

	end
	
	def make_sentence_array_from_input(input_string, direction, delimiter=" ")
		
	end
end