cat corpus.txt | awk '{print tolower($0)}' | tr -sc "[A-Z]ĀĒĪŌŪ[a-z]āēīōu" "[\n*]" | lookup mylang.fst > output.txt