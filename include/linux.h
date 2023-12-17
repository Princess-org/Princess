/*
%EXCLUDE sigstack sigreturn siggetmask tmpnam tmpnam_r tempnam sys_errlist sys_nerr lchmod getwd revoke mktemp setlogin atof atoi atol strtod strtol strtoul calloc free malloc realloc abort atexit exit getenv system bsearch qsort abs div labs ldiv srand rand mblen mbstowcs mbtowc wcstombs wctomb alloca sys_siglist _sys_siglist
%EXCLUDE shm_open crypt shm_unlink
%EXCLUDE __builtin_bswap32 __builtin_bswap64 profil add_profil unwhiteout UUID_NULL
%EXCLUDE __bswap_16 __bswap_32 __bswap_64 __uint16_identity __uint32_identity __uint64_identity

MUSL Doesn't provide these
%EXCLUDE gsignal sigblock sigsetmask __getpgid ttyslot sethostid strtoq strtouq random_r srandom_r initstate_r
%EXCLUDE setstate_r drand48_r erand48_r lrand48_r nrand48_r mrand48_r jrand48_r srand48_r seed48_r lcong48_r 
%EXCLUDE on_exit qecvt qfcvt qgcvt ecvt_r fcvt_r qecvt_r qfcvt_r rpmatch getdirentries ssignal
*/

#ifndef _WIN32
#ifndef __APPLE__
    #include <linux/limits.h>
#endif
    #include <sys/stat.h>
    #include <sys/ioctl.h>
    #include <sys/wait.h>
    #include <sys/mman.h>
    #include <sys/types.h>
    #include <unistd.h>
    #include <termios.h>
    #include <stdlib.h>
    #include <dlfcn.h>
    #include <fcntl.h>
#ifdef __APPLE__
    #include <libelf/libelf.h>
#endif
#ifndef __APPLE__
    #include <elf.h>
#endif
    #include <poll.h>
    #include <fnmatch.h>
    #include <dirent.h>
    #include <errno.h>
#ifndef MUSL
    #include <execinfo.h>
#endif
#endif