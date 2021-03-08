# kobo-aura-one-annotation-export

Exports Kobo Aura One ebook reader annotations to a text file

## Usage

1. Clone this project
2. Add `sqlite3` / `sqlite3.exe` executable to the folder
3. Run in bash:

```bash
# Point to your Kobo's sqlite database
export INPUT="/G/.kobo/KoboReader.sqlite"

# Choose the correct line separator for your OS
export SEPARATOR="\r\n" # For windows
export SEPARATOR="\n" # For Linux (default)

# Run the script
./export.sh
```
