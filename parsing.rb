require 'nokogiri'

file = 'strawberry.html'
doc = Nokogiri::HTML(File.open(file), nil, 'utf-8')

tagcloud_elements = doc.xpath("//div[@class='m_titre_resultat']/a")

tagcloud_elements.each do |element|
  puts element.text
end
