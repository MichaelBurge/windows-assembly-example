windows-assembly-example
========================

World's smallest example of how to call assembly routines from C code. For extra fun, compare the handwritten assembly with what gcc generates for a native C function that returns 20.

I wrote this on Windows. If you're doing the same, you'll want to have something like MingW64 installed and in your PATH to ensure you can call gcc, yasm, and make. I used this guy's build:
http://drangon.org/mingw/
