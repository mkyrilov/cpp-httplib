configure:
	chmod a+x split.py
	./split.py

build:
	g++ -c out/httplib.cc -std=c++11 -o out/httplib.o
	ar rcs out/libhttp.a out/httplib.o 

install:
	cp httplib.h /usr/include
	cp libhttp.a /usr/lib

clean:
	rm -rf out
