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
		
	end

	def test_sentence_with_numbers_and_punctuation
		
	end
end