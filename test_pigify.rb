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

		assert_equal("umanhay", @translate.human_readable_string_to_piglatin(input))
	end

	def test_single_vowel
		#what we should get back: occupyingyay
		input = "occupying"

		assert_equal("occupyingay", @translate.human_readable_string_to_piglatin(input))		
	end

	def test_sentence
		#what we should get: 
		input = "combat complains"

		assert_equal("ombatcay omplainscay", @translate.human_readable_string_to_piglatin(input))
	end

	def test_sentence_with_numbers
		#what we should get "15 angerousDay actsFay Electriciansay eepKay oTay hemselvesTay"
		input = "15 Dangerous Facts Electricians Keep To Themselves"

		assert_equal("15 angerousDay actsFay Electriciansay eepKay oTay hemselvesTay", @translate.human_readable_string_to_piglatin(input))
	end

	def test_sentence_with_punctuation
		#what we should get "15 angerousDay actsFay Electriciansay eepKay oTay hemselvesTay"
		input = "The unpopular glory renames an ice!"

		assert_equal("Ethay unpopularyay oryglay enamesray anyay iceyay!", @translate.human_readable_string_to_piglatin(input))
	end
end