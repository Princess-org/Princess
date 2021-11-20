/*
%EXCLUDE sigstack sigreturn siggetmask tmpnam tmpnam_r tempnam sys_errlist sys_nerr lchmod getwd revoke mktemp setlogin
*/

#ifndef _WIN32
    #include <linux/limits.h>
    #include <sys/stat.h>
    #include <sys/ioctl.h>
    #include <sys/wait.h>
    #include <sys/mman.h>
    #include <unistd.h>
    #include <termios.h>
#endif