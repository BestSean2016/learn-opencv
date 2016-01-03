CC=gcc
CXX=g++
INCLUDES=-I/usr/local/include
LIBS_PATH=-L/usr/local/lib
LIBS=-lopencv_core -lopencv_imgcodecs
CXXFLAGS=-g -Wall

all:	mat

mat: mat.o
	$(CXX) -o $@ mat.o $(LIBS_PATH) $(LIBS)

mat.o: mat.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c mat.cpp $(INCLUDES)

clean:
	rm -rf *.o mat;\
