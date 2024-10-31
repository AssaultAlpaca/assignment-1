sources=$(filter-out src/header.html footer.html $(wildcard src/*.html))

.PHONY=all

all: $(sources:%.html=src/%.html)

%.html: src/header.html src/%.html src/footer.html
    cat $| > $@
