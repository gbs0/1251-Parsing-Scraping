require 'json'
require 'open-uri'

# Crie um programa que pergunte pelo username do Github do user, e mostre seu nome e sua bio
puts "Welcome to Github Users API!"
puts "Insert a valid Github username:"
print "> "
username = gets.chomp

# 1. Montamos a url de destino
url = "https://api.github.com/users/#{username}"
# 2. Acessa a URL e recebemos o JSON do server
request = URI.open(url).read
# 3. Converter a string que recebemos, em uma Hash em Ruby
response = JSON.parse(request)

puts "#{response["name"]} - #{response["bio"]}"