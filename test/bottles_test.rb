require 'minitest/autorun'
require 'minitest/pride'
require './lib/bottles'

class BottlesTest < Minitest::Test

  def test_bottles_class_exists
    assert_instance_of Bottles, Bottles.new(2)
  end


  def test_it_can_take_in_number_of_bottles
    b = Bottles.new(2)

    assert_equal 2, b.number_of_bottles
  end

  def test_it_can_print_the_number_of_bottles_in_a_line_of_the_song
    b = Bottles.new(7)

    result = "7 bottles of beer on the wall, 7 bottles of beer,\n take one down pass it around 6 bottles of beer"

    assert_equal result, b.line
  end

  def test_it_keeps_track_of_the_count
    b = Bottles.new(7)

    assert_equal 6, b.count
  end

  def test_it_will_print_the_last_line_of_the_song
    b = Bottles.new(1)

    result = "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."

    assert_equal result, b.last_line_of_the_song
  end

  def test_it_sings_the_song
    b = Bottles.new(2)

    result = " "

    assert_equal result, b.sing_the_song(2)
  end

#   def test_it_will_print_the_last_line_of_the_song_if_the_number_of_bottles_is_one
#     b = Bottles.new(1)
#
#     result = "1 bottle of beer on the wall, 1 bottle of beer.
# Take one down and pass it around, no more bottles of beer on the wall.
# No more bottles of beer on the wall, no more bottles of beer.
# Go to the store and buy some more, 99 bottles of beer on the wall."
#
#   assert_equal result, b.sing_the_song(1)
#   end
end
