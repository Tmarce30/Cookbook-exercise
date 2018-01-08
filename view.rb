# require 'pry-byebug'

class View
  def display(cookbook)
    # binding.pry
    unless cookbook.empty?
      cookbook.each_with_index do |recipe, index|
        puts "#{index + 1} - #{recipe.name}, #{recipe.description}"
      end
    else
      puts "Your cookbook is empty !"
    end
    puts "\n---------------------------"
  end

  def ask_user_for_name
    puts "\nWhat's the name of your recipe ?"
    return gets.chomp
  end

  def ask_user_for_description
    puts "\nDescribe your recipe"
    return gets.chomp
  end

  def ask_user_for_time
    puts "\nHow much time does it take to cook it ?"
    return gets.chomp
  end
end
