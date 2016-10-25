require 'pry'

class Bottles
  attr_reader :number_of_bottles

  def sing_the_song(bottles)
    @number_of_bottles = bottles
    until  number_of_bottles == 1
      if number_of_bottles > 2
        puts line
        count_bottles_left
      else
        puts second_to_last_line
        count_bottles_left
      end
    puts last_line_of_the_song
    end
  end

  def line
    "#{@number_of_bottles} bottles of beer on the wall, #{@number_of_bottles} bottles of beer,\n take one down pass it around #{@number_of_bottles - 1} bottles of beer"
  end

  def count_bottles_left
    @number_of_bottles -= 1
  end

  def second_to_last_line
    "2 bottles of beer on the wall, 2 bottles of beer,\n take one down pass it around 1 bottle of beer"
  end

  def last_line_of_the_song
    "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

bottles = Bottles.new
bottles.sing_the_song(3)
