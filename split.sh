deps='word1 word2'
echo "$deps" | sed 's/[^ ]* */prefix-&/g'
split -l 10 --filter='{ printf "header text\n"; cat - ; printf "footer text\n"; } > $FILE' file.txt


split -l 10 --filter='sed -e '\''1i\header text'\'' -e '\''$a\footer text'\'' > $FILE' file.txt


cd F:\webslides-pl\www