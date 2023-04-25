require 'nokogiri'

file_path = 'data/beatles.xml'
file = File.open(file_path)

# Leitura
document = Nokogiri::XML(file)

# Precisamos encontrar os integrantes da banda
beatles = document.search("beatles beatle")

beatles.each do |beatle|
  first_name = beatle.search("first_name").text
  instrument = beatle.search("instrument").text
  puts "Name: #{first_name} | Instrument: #{instrument}"
end


# Escrita
document = Nokogiri::XML::Builder.new(encoding: "UTF-8") do
    beatles do # <beatles> 
        title "The Beatles" # <title>The Beatles</title>
        beatle do           # <beatle>
            first_name "John" # <first_name>John</first_name>
            last_name "Lennon" #<last_name>Lennon</last_name>
            instrument "Guitar"#<last_name>Guitar</last_name>
        end # </beatle>
    end # </beatles>
end

File.open(file_path, "wb") do |file| 
  file.write(document.to_xml)
end