class CookbookView

  def display(cookbook)
    cookbook.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}, #{recipe.description}"
    end
  end
end
