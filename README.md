# kobo-aura-one-annotation-export

Exports Kobo Aura One ebook reader annotations to a text file.

## Usage

1. Clone this project
2. Download `sqlite3` / `sqlite3.exe` (see below) executable to the same folder as the script
3. Run in bash:

```bash
# Point INPUT to your Kobo's sqlite database (required)
export INPUT="/G/.kobo/KoboReader.sqlite"

# Choose the correct line separator for your OS
export SEPARATOR="\r\n" # For windows
export SEPARATOR="\n" # For Linux (default)

# Output file name (default: annotations.txt)
export OUTPUT="annotations.txt"

# Run the script
./export.sh
```

## SQLite

You can download SQLite tools from https://www.sqlite.org/download.html

Put the sqlite executable to same folder as the script.
