# require 'pry-byebug'

class View
  def display(cookbook)
    # binding.pry
    # unless cookbook.empty?
      cookbook.each_with_index do |recipe, index|
        puts "#{index + 1} - #{recipe.name}, #{recipe.description}"
      end
    # else
    #   puts "Your cookbook is empty !"
    # end
  end
end
