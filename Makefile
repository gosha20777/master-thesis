all: build clean run

build:
	latexmk -xelatex \
	-synctex=1 main.tex
	
run:
	evince main.pdf

docker:
	echo "building diploma in\n\t `pwd` directory"
	docker run \
		--rm \
		-v `pwd`:/bachelor-diploma \
		docker-latex
	echo "done!"

clean:
	rm -f *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*.synctex.gz \
	*.toc \
	*.xdv
