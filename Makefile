CC=gcc
CXX=g++
INCLUDES=-I/usr/local/include
LIBS_PATH=-L/usr/local/lib
LIBS=-lopencv_core -lopencv_imgcodecs
CXXFLAGS=-g -Wall

TARGETS=mat scan

all:	$(TARGETS)

mat: mat.o
	$(CXX) -o $@ mat.o $(LIBS_PATH) $(LIBS)

mat.o: mat.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c mat.cpp $(INCLUDES)

scan: scan.o
	$(CXX) -o $@ scan.o $(LIBS_PATH) $(LIBS)


scan.o: scan.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c scan.cpp $(INCLUDES)


clean:
	rm -rf *.o $(TARGETS);\
