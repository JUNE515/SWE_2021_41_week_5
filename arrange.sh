for lowercase in {a..z}; do
    for file in ./files/"$lowercase"*; do
        if [ -e "$file" ]; then
            mv "$file" "./$lowercase"
        fi
    done
done

for uppercase in {A..Z}; do
    for file in ./files/"$uppercase"*; do
        if [ -e "$file" ]; then
            lowercase=${uppercase,,}
            mv "$file" "./$lowercase"
        fi
    done
done