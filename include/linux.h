/*
%EXCLUDE sigstack sigreturn siggetmask tmpnam tmpnam_r tempnam sys_errlist sys_nerr lchmod getwd revoke mktemp setlogin atof atoi atol strtod strtol strtoul calloc free malloc realloc abort atexit exit getenv system bsearch qsort abs div labs ldiv srand rand mblen mbstowcs mbtowc wcstombs wctomb alloca sys_siglist _sys_siglist

*/

#ifndef _WIN32
    #include <linux/limits.h>
    #include <sys/stat.h>
    #include <sys/ioctl.h>
    #include <sys/wait.h>
    #include <sys/mman.h>
    #include <unistd.h>
    #include <termios.h>
    #include <stdlib.h>
#endif