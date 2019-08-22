# Calculator Basic Objectives

# take the first number
# take modifier
# take the last number
# puts result
# error checking
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work
# - make clear work

@n1
@m1
@n2
@c1
@p1
@kept_1

def separator
  puts " "
end

def welcome
  separator
  puts 'Welcome to Ruby Calculator'
  separator
  first_number
end

def first_number
  puts 'Please input the first number'
  @n1 = gets.chomp
  if is_numeric(@n1)
    @n1 = @n1.to_f
    modifier
  else
    puts "Please input a numerical value"
    first_number
  end
end

def is_numeric(s)
!!Float(s) rescue false
end


def modifier
  puts 'Please input the Modifier'
  @m1 = gets.chomp
  case @m1
  when "+"
    second_number
  when "-"
    second_number
  when "*"
    second_number
  when "/"
    second_number
  else
    puts "Invalid Operator. Please enter a '+ - * /'"
    modifier
  end
    
 
end


def second_number
  separator
  puts 'Please input the Second Number'
  @n2 = gets.chomp
  if is_numeric(@n2)
    @n2 = @n2.to_f
    calculate_options
  else
    separator
    puts "Please input a numerical value"
    second_number
  end
end

def calculate_options
  separator
  puts "Would you like to: 1) Calculate, 2) Clear, 3) Exit"
  separator
  @p1 = gets.to_i
  if @p1 == 1
    puts "Calculating ..."
    separator
    if @m1 == "+"
      puts "The result of #{@n1} #{@m1} #{@n2} is #{@n1 + @n2}"
      @n1 = (@n1 + @n2)
      loop
    elsif @m1 == "-"
      puts "The result of #{@n1} #{@m1} #{@n2} is #{@n1 - @n2}"
      @n1 = (@n1 - @n2)
      loop
    elsif @m1 == "*"
      puts "The result of #{@n1} #{@m1} #{@n2} is #{@n1 * @n2}"
      @n1 = (@n1 * @n2)
      loop
    elsif @m1 == "/"
      puts "The result of #{@n1} #{@m1} #{@n2} is  #{@n1 / @n2}"
      @n1 = (@n1 / @n2)
      loop
    else
      puts "Please enter a '+ - * /'"
      welcome
    end
  elsif @p1 == 2
    welcome
  elsif @p1 == 3
    Exit
  else
    "Please enter option 1, 2 or 3"
  calculate_options
  end

end  

def loop
  puts "Would you like to continue? (y/n)"
  @c1 = gets.chomp
  separator
  case @c1
  when "y"
    puts "Stored number is #{@n1}"
    separator
    modifier
  when "n"
    welcome
  else
    puts "Please enter (y/n)"
    end
end


welcome

# def calculate

#   puts "Calculating ..."
#   if @m1 == "+"
#     puts "Your answer is #{@n1 + @n2}"
#     loop
#   elsif @m1 == "-"
#     puts "Your answer is = #{@n1 - @n2}"
#     loop
#   elsif @m1 == "*"
#     puts "Your answer is = #{@n1 * @n2}"
#     loop
#   elsif @m1 == "/"
#     puts "Your answer is = #{@n1 / @n2}"
#     loop
#   else
#     puts "Please enter a '+ - * /'"
#     welcome
#   end

# end
