# -----------------------------------------------------
# Generic makefile for a program using PSOPT on Linux.
#
# Jason M. Everett
# January 2020
# -----------------------------------------------------

LIBDIR        = ./lib
OBJDIR        = ./obj
SRCDIR        = ./src
INCDIRS       = -I./include -I./include/PSOPT -I./include/PSOPT/coin-or
BINDIR        = ./bin

OBJS = \
	$(OBJDIR)/main.o \
	$(OBJDIR)/test2.o

SRCS = \
	$(SRCDIR)/main.cxx \
	$(SRCDIR)/test2.cxx

LIBS_PSOPT	= \
	$(LIBDIR)/liblusol.a \
	$(LIBDIR)/libcxsparse.a \
	$(LIBDIR)/libipopt.so \
	$(LIBDIR)/libadolc.so \
	$(LIBDIR)/libColPack.a \
	$(LIBDIR)/libpsopt.a \
	$(LIBDIR)/libdmatrix.a


LDFLAGS	      = -lm -lf2c  -llapack -lf77blas -lcblas -ldl


CXX           = /usr/bin/g++
CC            = /usr/bin/gcc
CXXFLAGS      = -O0 $(INCDIRS) -g -DLAPACK -DUNIX -DSPARSE_MATRIX -DUSE_IPOPT -fomit-frame-pointer -pipe -DNDEBUG -pedantic-errors -Wparentheses -Wreturn-type -Wcast-qual -Wall -Wpointer-arith -Wwrite-strings -Wconversion -fPIC -DHAVE_MALLOC -std=c++11
CFLAGS        = -O0 -fPIC

# Individual Object Targets
# -------------------------

$(OBJDIR)/%.o : $(SRCDIR)/%.cxx
	mkdir -p $(OBJDIR)
	$(CXX) -c $(CXXFLAGS) $< -o $@


# Build Targets
# -------------

all: main

main: $(OBJS) $(LIBS_PSOPT)
	mkdir -p $(BINDIR)
	$(CXX) $(CXXFLAGS) $^ -o $@ -L$(LIBDIR) $(LIBS_PSOPT) $(LDFLAGS)
	mv main $(BINDIR)

clean:
	rm -f $(OBJDIR)/*.o
	rm -f $(BINDIR)/*.o
	rm -rf $(OBJDIR)
	rm -rf $(BINDIR)


