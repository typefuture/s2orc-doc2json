setup:
	docker run -t --rm -p 8070:8070 lfoppiano/grobid:0.7.3

build:
	docker build . -t s2orc-doc2json:v0.0.1

sh:
	docker run --rm -it --entrypoint bash s2orc-doc2json:v0.0.1