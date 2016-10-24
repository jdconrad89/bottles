require 'pry'

class Bottles
  attr_reader :number_of_bottles

  def initialize(bottles)
    @number_of_bottles = bottles
  end

  def sing_the_song(bottles)
    until @number_of_bottles == 1
      puts line
      count
    end
    puts last_line_of_the_song
  end

  def line
     "#{@number_of_bottles} bottles of beer on the wall, #{@number_of_bottles} bottles of beer,\n take one down pass it around #{@number_of_bottles - 1} bottles of beer"
  end

  def count
    @number_of_bottles -= 1
  end

  def last_line_of_the_song
    "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

b = Bottles.new(3)
b.sing_the_song(3)
