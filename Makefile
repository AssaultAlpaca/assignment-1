sources=$(filter-out src/header.html src/footer.html, $(wildcard src/*.html))

.PHONY=all

all: $(sources:src/%.html=%.html)

%.html: src/header.html src/%.html src/footer.html
	cat $+ > $@
