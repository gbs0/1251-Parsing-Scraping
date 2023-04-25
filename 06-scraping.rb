require 'pry'
require 'open-uri'
require 'nokogiri'

puts "Welcome to Cookbook"
puts "Insert your favorite ingredient to search a recipe:"
print "> "
ingredient = gets.chomp

# 1. Montamos a url de destino com o ingrediente do usuário
url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"

# 2. Requisitamos as informações do servidor utilizando 'open-uri'
document = URI.open(url).read
# 3. Converter a string que recebemos, em uma Hash em Ruby
html = Nokogiri::HTML.parse(document)

# 4. Recuperar do documento, somente o resultado das receitas
recipes = html.search(".card__section.card__content")

# 5. Dada a lista de receitas, vamos passar por cada item e extrair seu conteudo.
recipes.each do |recipe|
    recipe_name = recipe.search(".heading-4").text
    recipe_link = recipe.search(".link").attribute('href').value
    puts "#{recipe_name} - See more: https://www.bbcgoodfood.com#{recipe_link}"
end