FILES = slides.md
		

OUTPUT = .

FLAGS = --standalone \
		--from markdown-markdown_in_html_blocks+raw_html \
		--section-divs \
		--slide-level=2 \
		--variable revealjs-url="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.6.0" \
		--variable theme="white" \
		--variable transition="linear" \
		--variable width="\"90%\"" \
		--variable background-image="aau_waves.png" \
		--metadata-file=metadata.yaml \
		--template=template.html \
		--css=style.css
#		--bibliography=bibliography.bib \
#		--csl=bibliography.csl \


all: revealjs

revealjs:
	pandoc -t revealjs -o $(OUTPUT)/slides.html $(FLAGS) $(FILES)

clean:
	rm slides.html

