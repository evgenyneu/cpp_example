# Name of the executable
EXEC=hello

# The source files separated with space
SRCS=hello.cpp add.cpp

# The c++ compiler to use
CXX=g++

# Remove command
RM=rm -f

# flags for the preprocessor (typically include file paths and symbols defined on the command line)
CPPFLAGS=-g -Wall -Wextra

# linker flags
LDFLAGS=-g -Wall -Wextra

# libraries to link
LDLIBS=

OBJS=$(subst .cpp,.o,$(SRCS))

all: $(EXEC)

$(EXEC): $(OBJS)
		$(CXX) $(LDFLAGS) -o $(EXEC) $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
		$(RM) ./.depend
		$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
		$(RM) $(OBJS)

distclean: clean
		$(RM) $(EXEC)
		$(RM) *~ .depend

include .depend