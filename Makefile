all: index.html

clean:
	rm -f index.html

index.html: demo/index.md demo/template.html Makefile
	pandoc --toc -s --css src/reset.css --css src/index.css -i $< -o $@ --template=demo/template.html

.PHONY: all clean
