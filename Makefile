#Jakub Michalec & Peter Cronin
#Used to contain commands to compile projects
#Equivalent(?) to a project file in VStudio -- only better!
#See http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/ for info.

CC=g++
CPPFLAGS= -std=c++11 -pthread
CPPFILES=main.cpp

#This rule says that each .o file depends on a .cpp file of the same name
%.o: %.cpp
	$(CC) -c -o $@ $< $(CPPFLAGS) $(DEBUGFLAGS)

ALL: $(HFILES) $(CPPFILES)
	$(CC) -o main $(CPPFLAGS) $(CPPFILES) $(DEBUGFLAGS)

DEBUG: DEBUGFLAGS = -g -O0
DEBUG: ALL

#this is customary and just deletes all .o files

CLEAN:
	rm *.o
