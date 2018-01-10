require 'nokogiri'

file = 'strawberry.html'
html = Nokogiri::HTML(File.open(file), nil, 'utf-8')

# titles = doc.xpath("//div[@class='m_titre_resultat']/a")
# descriptions = doc.xpath("//div[@class='m_detail_recette']")
# cooking_times = doc.xpath("//div[@class='m_detail_time']/div[@style='float:left;']")

# def get_recipe_title(titles)
#   titles.map do |element|
#     element.text
#   end
# end

# def get_recipe_descriptions(descriptions)
#   descriptions.map do |element|
#     element.text.gsub("Recipe -", '').strip
#   end
# end

# def get_recipe_cooking_time(cooking_times)
#   cooking_times.map do |element|
#     element.text.first.parent
#   end
# end

html.search(".recette_classique").each do |doc|
  title = doc.search(".m_titre_resultat").text.strip
  description = doc.search(".m_detail_recette").text.gsub("Recipe -", '').strip
  cooking_time = doc.search(".m_prep_time").first.parent.text.strip
  p title
  p description
  p cooking_time
end



