.PHONY: clean build

scrabble: build
	@./scrabble $(WORD) $(LETTER) $(PLACE)

anagramfile: build
	@./anagramfile $(WORD)

build: anagramfile.c scrabble.c
	@gcc -w -o  anagramfile anagramfile.c
	@gcc -w -o  scrabble scrabble.c

clean:
	@-rm anagramfile
	@-rm scrabble                          
