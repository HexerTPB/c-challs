build:
	gcc main.c -o main

clean:
	rm main

test:
	./main
	bash tests/$(test).sh
