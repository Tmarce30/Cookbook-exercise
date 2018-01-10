require_relative 'cookbook'

class View
  def display(cookbook)
    unless cookbook.empty?
      puts "Your recipes :"
      cookbook.each_with_index do |recipe, index|
        status = recipe.has_been_done? ? "[X]" : "[ ]"
        puts "#{index + 1} - #{recipe.name} | #{recipe.description} | #{recipe.cooking_time} min #{status}"
      end
    else
      puts "Your cookbook is empty !"
    end
    puts "\n---------------------------"
  end

  def display_parsed_recipes(recipes)
    unless recipes.empty?
      recipes.each_with_index do |recipe, index|
        puts "#{index + 1} - #{recipe.name} | #{recipe.description} | #{recipe.cooking_time}"
      end
    else
      puts "No recipes found !"
    end
    puts "\n---------------------------"
  end

  def ask_for_recipe
    puts "\nWhat do you want to cook ?"
    return gets.chomp
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
    puts "\nHow much time does it take to cook it (min) ?"
    return gets.chomp.to_i
  end

  def recipe_to_remove
    puts "\n Which recipe do you want to remove ?"
    recipe_index
  end

  def ask_user_to_select_recipe
    puts "\n Select a recipe"
    recipe_index
  end

  private

  def recipe_index
    index = gets.chomp.to_i - 1
    return index
  end
end
