#!/bin/bash
set -eu

if [ ! -f ./sqlite3 ]; then
    echo "ERROR: sqlite3 executable must be present in this folder."
    exit 1
fi

if [ -z "${INPUT:-}" ]; then
    echo "ERROR: \$INPUT is empty. Set Kobo database path to \$INPUT."
    exit 1
fi

if [ -z "${OUTPUT:-}" ]; then
    echo '$OUTPUT not set. Using default output file: annotations.txt'
    OUTPUT="annotations.txt"
fi

if [ -z "${SEPARATOR:-}" ]; then
    echo '$SEPARATOR not set. Using default line separator: \n'
    SEPARATOR="\n"
fi

cp ${INPUT} ./

./sqlite3 KoboReader.sqlite <<EOF
.output ${OUTPUT}
.separator "${SEPARATOR}"
SELECT VolumeID, DateCreated, Text, Annotation FROM Bookmark WHERE Text!='' ORDER BY VolumeId ASC, DateCreated ASC;
.exit
EOF