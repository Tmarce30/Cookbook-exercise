require 'nokogiri'
require 'open-uri'
require_relative 'recipe'

class SearchRecipe
  def search(recipe_name)
    recipes = []

    url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?type=all&aqt=#{recipe_name}"
    html = Nokogiri::HTML(open(url), nil, 'utf-8')

    html.search(".recette_classique").each do |doc|
      name = doc.search(".m_titre_resultat").text.strip
      description = doc.search(".m_detail_recette").text.gsub("Recipe -", '').strip
      cooking_time = doc.search(".m_prep_time").first.parent.text.strip

      recipe = Recipe.new(name, description, cooking_time)
      recipes << recipe
    end
    return recipes
  end
end
