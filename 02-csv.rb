# 1. Requerir a gema 'csv'
require 'csv'

# 2. Precisamos definir o diretório do csv a ser lido.
file_path = 'data/beatles.csv'

# Leitura do CSV
# 3. Utilizamos a classe CSV p/ abrir o arquivo
# headers: :first_row indica que a primeira linha do csv será um cabeçalho
CSV.foreach(file_path, "r", headers: :first_row) do |linha|
  puts "Name: #{linha["First Name"]} | Instrument: #{linha["Instrument"]} | Age: #{linha["Age"]}"
end

# Escrita
CSV.open(file_path, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument", "Age"]
  csv << ["George", "Abidol", "Ukele", 45]
end

# ----------------------------------------------
# File.open modes
# Mode |  Meaning
# -----+--------------------------------------------------------
# "r"  |  Read-only, starts at beginning of file  (default mode).
# -----+--------------------------------------------------------
# "r+" |  Read-write, starts at beginning of file.
# -----+--------------------------------------------------------
# "w"  |  Write-only, truncates existing file
#      |  to zero length or creates a new file for writing.
# -----+--------------------------------------------------------
# "w+" |  Read-write, truncates existing file to zero length
#      |  or creates a new file for reading and writing.
# -----+--------------------------------------------------------
# "a"  |  Write-only, starts at end of file if file exists,
#      |  otherwise creates a new file for writing.
# -----+--------------------------------------------------------
# "a+" |  Read-write, starts at end of file if file exists,
#      |  otherwise creates a new file for reading and
#      |  writing.
# -----+--------------------------------------------------------
# "b"  |  Binary file mode (may appear with
#      |  any of the key letters listed above).
#      |  Suppresses EOL <-> CRLF conversion on Windows. And
#      |  sets external encoding to ASCII-8BIT unless explicitly
#      |  specified.
# -----+--------------------------------------------------------
# "t"  |  Text file mode (may appear with
#      |  any of the key letters listed above except "b").





