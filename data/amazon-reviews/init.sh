cd "$(dirname "$0")"

if [ ! -f train.ft.txt ]; then
    printf "Concatenating chunks..."
    cat train.chunk.* > train.ft.txt
    cat test.chunk.* > test.ft.txt
fi
