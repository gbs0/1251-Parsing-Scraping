require 'json'

# 1. O caminho referente ao arquivo que será lido
file_path = "data/beatles.json"

# Leitura do arquivo .json
file_json = File.open(file_path).read

# Converter o arquivo JSON em um Objeto
file_as_hash = JSON.parse(file_json)
p file_as_hash.class
p file_as_hash

# Imprimindo o nome de cada integrante no terminal
file_as_hash["artists"].each do |beatle|
    puts "Name: #{beatle["first_name"]} | Instrument: #{beatle["instrument"]}"
end

# Escrita
pink_floyd = {
    "title": "Pink Floyd",
    "year": 1978,
    artists: [
        {
            "first_name": "Roger",
            "last_name": "Waters",
            "Instrument": "Guitar"
        },
        {
            "first_name": "George",
            "last_name": "Abidol",
            "Instrument": "Drums"
        }
    ]
}

# p/ escrever em um arquivo .json, iremos primeiramente
# Abrir o arquivo, e depois, inserimos as informações da hash no formato de texto.
File.open(file_path, 'w') do |file|
    # Geramos um JSON atráves da hash pink_floyd
    json_as_file = JSON.generate(pink_floyd)
    # Inserir no arquivo, este conteúdo convertido em JSON
    file.write(json_as_file)
end

