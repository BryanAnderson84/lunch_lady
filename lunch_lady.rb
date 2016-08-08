#TODO figure out how to store the order, money, and calculate the total
MAINDISH = {
  1 => {main1: "Mutton Mountain ($9.00)"},
  2 => {main2: "Mound O' Mash ($6.00)"},
  3 => {main3: "Large Marge Special ($11.00)" }
}

SIDEONE = {
  1 => {side1: "Pickled Bits ($2.00)"},
  2 => {side2: "Cheese Globs ($1.00)"},
  3 => {side3: "Taters N' Mayo ($4.00)"}
}

SIDETWO = {
  1 => {side1: "Pickled Bits ($2.00)"},
  2 => {side2: "Cheese Globs ($1.00)"},
  3 => {side3: "Taters N' Mayo ($4.00)"}
}
#
class Lunch_order
  attr_accessor :main, :side_1, :side_2

  def initialize
  @total_order = Array.new
  @total_price = Array.new
  end

  def lunch_lady
    puts ""
    puts "Hey! Kid! You're next in line, hurry up will ya??"
    puts "Pick a Main Dish from the menu below:"
    puts "    1:"
    puts "    2:"
    puts "    3:"
    puts " To exit the lunch line, press 4"
    print "-->"
    @main_dish = gets.to_i
    case @main_dish
      when 1
        side_menu
      when 2
        side_menu
      when 3
        side_menu
      when 4
        exit(0)
      else
      puts ""
      puts "Incorrect entry! Sorry kid, back of the line!"
      lunch_lady
    end
  end

  def order_build
    puts "Your order is:"

  end

  def side_menu
    puts ""
    puts "Now pick a side dish - and be quick about it!"
    puts "    1: Pickled Bits ($2.00)"
    puts "    2: Cheese Globs ($1.00)"
    puts "    3: Taters N' Mayo ($4.00)"
    print " -->"
    @first_side = gets.to_i
    side_menu_two
  end

  def side_menu_two
    puts ""
    puts "Now pick a side dish - and be quick about it!"
    puts "    1: Pickled Bits ($2.00)"
    puts "    2: Cheese Globs ($1.00)"
    puts "    3: Taters N' Mayo ($4.00)"
    print " -->"
    @second_side = gets.to_i
  end

  while true
  lunch_lady.Lunch_order
  end
end
# end
