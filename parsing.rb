require 'nokogiri'

file = 'strawberry.html'
doc = Nokogiri::HTML(File.open(file), nil, 'utf-8')

titles = doc.xpath("//div[@class='m_titre_resultat']/a")
descriptions = doc.xpath("//div[@class='m_detail_recette']")



def get_recipe_title(titles)
  titles.map do |element|
    element.text
  end
end

def get_recipe_descriptions(descriptions)
  descriptions.map do |element|
    element.text.gsub("Recipe -", '').strip
  end
end






