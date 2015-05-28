# test_pigify
require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require './pigify.rb'

class TestPiglatinTranslate < Minitest::Test
	def setup
		@translate = PiglatinTranslate.new
	end

	def test_single_consonant
		#what we should get back: umanhay
		input = "human"

		assert_equal("umanhay", @translate.human_readable_string_to_piglatin(input_string: input))
	end

	def test_word_with_consonant_pair
		#what we should get back: ansformationtray
		input = "transformation"

		assert_equal("ansformationtray", @translate.human_readable_string_to_piglatin(input_string: input))		
	end

	def test_single_vowel
		#what we should get back: occupyingyay
		input = "occupying"

		assert_equal("occupyingyay", @translate.human_readable_string_to_piglatin(input_string: input))		
	end

	def test_sentence
		#what we should get: ombatcay omplainscay
		input = "combat complains"

		assert_equal("ombatcay omplainscay", @translate.human_readable_string_to_piglatin(input_string: input))
	end

	def test_sentence_case_is_preserved_set_false
		#what we should get back: ethay esemblanceray uttersmay
		input = "The Resemblance Mutters"

		assert_equal("ethay esemblanceray uttersmay", @translate.human_readable_string_to_piglatin(input_string: input, preserve_capitals: false))
	end	


	def test_sentence_case_is_preserved
		#what we should get back: Ethay Esemblanceray Uttersmay
		input = "The Resemblance Mutters"

		assert_equal("Ethay Esemblanceray Uttersmay", @translate.human_readable_string_to_piglatin(input_string: input))		
	end	

	def test_sentence_with_numbers
		#what we should get "15 Angerousday Actsfay Electriciansyay Eepkay Otay Emselvesthay"
		input = "15 Dangerous Facts Electricians Keep To Themselves"

		assert_equal("15 Angerousday Actsfay Electriciansyay Eepkay Otay Emselvesthay", @translate.human_readable_string_to_piglatin(input_string: input))
	end

	def test_sentence_with_punctuation
		#what we should get "15 angerousDay actsFay Electriciansay eepKay oTay hemselvesTay"
		input = "The unpopular glory renames an ice!"

		assert_equal("Ethay unpopularyay oryglay enamesray anyay iceyay!", @translate.human_readable_string_to_piglatin(input_string: input))
	end
end