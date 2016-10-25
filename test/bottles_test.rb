require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bottles'

class BottlesTest < Minitest::Test

  def test_bottles_class_exists
    assert_instance_of Bottles, Bottles.new
  end

  def test_it_can_take_in_a_number
    b= Bottles.new

    b.sing_the_song(2)

    assert Fixnum, b.number_of_bottles.class
  end

  def test_it_keeps_track_of_the_count_through_a_song
    b = Bottles.new
    b.sing_the_song(7)
    assert_equal 0, b.count_bottles_left
  end

  def test_it_will_print_the_second_to_last_line_of_the_song
    b = Bottles.new

    result = "2 bottles of beer on the wall, 2 bottles of beer,\n take one down pass it around 1 bottle of beer"
    assert_equal result, b.second_to_last_line
  end

  def test_it_will_print_the_last_line_of_the_song
    b = Bottles.new

    result = "1 bottle of beer on the wall, 1 bottle of beer.
    Take one down and pass it around, no more bottles of beer on the wall.
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall."

    assert_equal result, b.last_line_of_the_song
  end

  def test_it_will_sing_the_song
    b = Bottles.new

    assert String,  b.sing_the_song(2).class
  end


end
