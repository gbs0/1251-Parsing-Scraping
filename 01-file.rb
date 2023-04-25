# Mostrar no terminal, o texto contido no arquivo 'data/beatles.txt'

# Leitura
# 1. Escrevemos qual é o diretório relativo ao arquivo.
file_directory = 'data/beatles.txt'

# 2. Abre o arquivo passando o parametro do caminho
file = File.open(file_directory)

# 3. Guardar a informação do arquivo em uma variável
text = file.read

# 4. Mostrar o conteúdo no terminal.
puts text

# "John,Lennon,Guitar,42\n
# Paul,McCartney,Bass Guitar,35\n
# George,Harrison,Lead Guitar,42\n
# Ringo,Starr,Drums,45\n
# Gabriel,Schiavo,Guitar,26"

# Escrita
# 1. Criar o novo texto a ser salvo.
new_text = text + "\nGabriel,Schiavo,Guitar,26"

# 2. Executar a função .write (escrita) no arquivo destino.
File.write(file_directory,  new_text)