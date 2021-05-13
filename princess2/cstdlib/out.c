typedef unsigned long size_t;
typedef int wchar_t;
typedef enum  {
    P_ALL,
    P_PID,
    P_PGID
} idtype_t;
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
typedef struct {
    int quot;
    int rem;
} div_t;
typedef struct {
    long quot;
    long rem;
} ldiv_t;
typedef struct {
    long long quot;
    long long rem;
} lldiv_t;
extern size_t __ctype_get_mb_cur_max() __attribute__((nothrow));
extern double atof(const char *__nptr) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern int atoi(const char *__nptr) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern long atol(const char *__nptr) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern long long atoll(const char *__nptr) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern double strtod(const char *restrict __nptr, char **restrict __endptr) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern float strtof(const char *restrict __nptr, char **restrict __endptr) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern long double strtold(const char *restrict __nptr, char **restrict __endptr) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern long strtol(const char *restrict __nptr, char **restrict __endptr, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern unsigned long strtoul(const char *restrict __nptr, char **restrict __endptr, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern long long strtoq(const char *restrict __nptr, char **restrict __endptr, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern unsigned long long strtouq(const char *restrict __nptr, char **restrict __endptr, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern long long strtoll(const char *restrict __nptr, char **restrict __endptr, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern unsigned long long strtoull(const char *restrict __nptr, char **restrict __endptr, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern char *l64a(long __n) __attribute__((nothrow));
extern long a64l(const char *__s) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
typedef unsigned char __u_char;
typedef unsigned short __u_short;
typedef unsigned int __u_int;
typedef unsigned long __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long __int64_t;
typedef unsigned long __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long __quad_t;
typedef unsigned long __u_quad_t;
typedef long __intmax_t;
typedef unsigned long __uintmax_t;
typedef unsigned long __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long __ino_t;
typedef unsigned long __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long __nlink_t;
typedef long __off_t;
typedef long __off64_t;
typedef int __pid_t;
typedef struct {
    int __val[2];
} __fsid_t;
typedef long __clock_t;
typedef unsigned long __rlim_t;
typedef unsigned long __rlim64_t;
typedef unsigned int __id_t;
typedef long __time_t;
typedef unsigned int __useconds_t;
typedef long __suseconds_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void *__timer_t;
typedef long __blksize_t;
typedef long __blkcnt_t;
typedef long __blkcnt64_t;
typedef unsigned long __fsblkcnt_t;
typedef unsigned long __fsblkcnt64_t;
typedef unsigned long __fsfilcnt_t;
typedef unsigned long __fsfilcnt64_t;
typedef long __fsword_t;
typedef long __ssize_t;
typedef long __syscall_slong_t;
typedef unsigned long __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef unsigned long ulong;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__((mode(__word__)));
static inline __uint16_t __bswap_16(__uint16_t __bsx) {
    return ((__uint16_t)((((__bsx) >> 8) & 255) | (((__bsx) & 255) << 8)));
}
static inline __uint32_t __bswap_32(__uint32_t __bsx) {
    return ((((__bsx) & 4278190080U) >> 24) | (((__bsx) & 16711680U) >> 8) | (((__bsx) & 65280U) << 8) | (((__bsx) & 255U) << 24));
}
static inline __uint64_t __bswap_64(__uint64_t __bsx) {
    return ((((__bsx) & 18374686479671623680ULL) >> 56) | (((__bsx) & 71776119061217280ULL) >> 40) | (((__bsx) & 280375465082880ULL) >> 24) | (((__bsx) & 1095216660480ULL) >> 8) | (((__bsx) & 4278190080ULL) << 8) | (((__bsx) & 16711680ULL) << 24) | (((__bsx) & 65280ULL) << 40) | (((__bsx) & 255ULL) << 56));
}
static inline __uint16_t __uint16_identity(__uint16_t __x) {
    return __x;
}
static inline __uint32_t __uint32_identity(__uint32_t __x) {
    return __x;
}
static inline __uint64_t __uint64_identity(__uint64_t __x) {
    return __x;
}
typedef struct {
    unsigned long __val[16];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval {
    __time_t tv_sec;
    __suseconds_t tv_usec;
};
struct timespec {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
};
typedef __suseconds_t suseconds_t;
typedef long __fd_mask;
typedef struct {
    __fd_mask __fds_bits[16];
} fd_set;
typedef __fd_mask fd_mask;
extern int select(int __nfds, fd_set *restrict __readfds, fd_set *restrict __writefds, fd_set *restrict __exceptfds, struct timeval *restrict __timeout);
extern int pselect(int __nfds, fd_set *restrict __readfds, fd_set *restrict __writefds, fd_set *restrict __exceptfds, const struct timespec *restrict __timeout, const __sigset_t *restrict __sigmask);
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef struct __pthread_internal_list {
    struct __pthread_internal_list *__prev;
    struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist {
    struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s {
    int __lock;
    unsigned int __count;
    int __owner;
    unsigned int __nusers;
    int __kind;
    short __spins;
    short __elision;
    __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t {
    unsigned int __readers;
    unsigned int __writers;
    unsigned int __wrphase_futex;
    unsigned int __writers_futex;
    unsigned int __pad3;
    unsigned int __pad4;
    int __cur_writer;
    int __shared;
    signed char __rwelision;
    unsigned char __pad1[7];
    unsigned long __pad2;
    unsigned int __flags;
};
struct __pthread_cond_s {
    union {
        unsigned long long __wseq;
        struct {
            unsigned int __low;
            unsigned int __high;
        } __wseq32;
    };
    union {
        unsigned long long __g1_start;
        struct {
            unsigned int __low;
            unsigned int __high;
        } __g1_start32;
    };
    unsigned int __g_refs[2];
    unsigned int __g_size[2];
    unsigned int __g1_orig_size;
    unsigned int __wrefs;
    unsigned int __g_signals[2];
};
typedef unsigned long pthread_t;
typedef union {
    char __size[4];
    int __align;
} pthread_mutexattr_t;
typedef union {
    char __size[4];
    int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t {
    char __size[56];
    long __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union {
    struct __pthread_mutex_s __data;
    char __size[40];
    long __align;
} pthread_mutex_t;
typedef union {
    struct __pthread_cond_s __data;
    char __size[48];
    long long __align;
} pthread_cond_t;
typedef union {
    struct __pthread_rwlock_arch_t __data;
    char __size[56];
    long __align;
} pthread_rwlock_t;
typedef union {
    char __size[8];
    long __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union {
    char __size[32];
    long __align;
} pthread_barrier_t;
typedef union {
    char __size[4];
    int __align;
} pthread_barrierattr_t;
extern long random() __attribute__((nothrow));
extern void srandom(unsigned int __seed) __attribute__((nothrow));
extern char *initstate(unsigned int __seed, char *__statebuf, size_t __statelen) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern char *setstate(char *__statebuf) __attribute__((nothrow)) __attribute__((nonnull(1)));
struct random_data {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
};
extern int random_r(struct random_data *restrict __buf, int32_t *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int srandom_r(unsigned int __seed, struct random_data *__buf) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern int initstate_r(unsigned int __seed, char *restrict __statebuf, size_t __statelen, struct random_data *restrict __buf) __attribute__((nothrow)) __attribute__((nonnull(2, 4)));
extern int setstate_r(char *restrict __statebuf, struct random_data *restrict __buf) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int rand() __attribute__((nothrow));
extern void srand(unsigned int __seed) __attribute__((nothrow));
extern int rand_r(unsigned int *__seed) __attribute__((nothrow));
extern double drand48() __attribute__((nothrow));
extern double erand48(unsigned short __xsubi[3]) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern long lrand48() __attribute__((nothrow));
extern long nrand48(unsigned short __xsubi[3]) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern long mrand48() __attribute__((nothrow));
extern long jrand48(unsigned short __xsubi[3]) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern void srand48(long __seedval) __attribute__((nothrow));
extern unsigned short *seed48(unsigned short __seed16v[3]) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern void lcong48(unsigned short __param[7]) __attribute__((nothrow)) __attribute__((nonnull(1)));
struct drand48_data {
    unsigned short __x[3];
    unsigned short __old_x[3];
    unsigned short __c;
    unsigned short __init;
    unsigned long long __a;
};
extern int drand48_r(struct drand48_data *restrict __buffer, double *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int erand48_r(unsigned short __xsubi[3], struct drand48_data *restrict __buffer, double *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int lrand48_r(struct drand48_data *restrict __buffer, long *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int nrand48_r(unsigned short __xsubi[3], struct drand48_data *restrict __buffer, long *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int mrand48_r(struct drand48_data *restrict __buffer, long *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int jrand48_r(unsigned short __xsubi[3], struct drand48_data *restrict __buffer, long *restrict __result) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int srand48_r(long __seedval, struct drand48_data *__buffer) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern int seed48_r(unsigned short __seed16v[3], struct drand48_data *__buffer) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int lcong48_r(unsigned short __param[7], struct drand48_data *__buffer) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern void *malloc(size_t __size) __attribute__((nothrow)) __attribute__((malloc));
extern void *calloc(size_t __nmemb, size_t __size) __attribute__((nothrow)) __attribute__((malloc));
extern void *realloc(void *__ptr, size_t __size) __attribute__((nothrow)) __attribute__((warn_unused_result("")));
extern void *reallocarray(void *__ptr, size_t __nmemb, size_t __size) __attribute__((nothrow)) __attribute__((warn_unused_result("")));
extern void free(void *__ptr) __attribute__((nothrow));
extern void *alloca(size_t __size) __attribute__((nothrow));
extern void *valloc(size_t __size) __attribute__((nothrow)) __attribute__((malloc));
extern int posix_memalign(void **__memptr, size_t __alignment, size_t __size) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern void *aligned_alloc(size_t __alignment, size_t __size) __attribute__((nothrow)) __attribute__((malloc));
extern void abort() __attribute__((nothrow));
extern int atexit(void (*__func)(void)) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int at_quick_exit(void (*__func)(void)) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int on_exit(void (*__func)(int, void *), void *__arg) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern void exit(int __status) __attribute__((nothrow));
extern void quick_exit(int __status) __attribute__((nothrow));
extern void _Exit(int __status) __attribute__((nothrow));
extern char *getenv(const char *__name) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int putenv(char *__string) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int setenv(const char *__name, const char *__value, int __replace) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern int unsetenv(const char *__name) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int clearenv() __attribute__((nothrow));
extern char *mktemp(char *__template) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int mkstemp(char *__template) __attribute__((nonnull(1)));
extern int mkstemps(char *__template, int __suffixlen) __attribute__((nonnull(1)));
extern char *mkdtemp(char *__template) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int system(const char *__command);
extern char *realpath(const char *restrict __name, char *restrict __resolved) __attribute__((nothrow));
typedef int (*__compar_fn_t)(const void *, const void *);
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) __attribute__((nonnull(1, 2, 5)));
extern void qsort(void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) __attribute__((nonnull(1, 4)));
extern int abs(int __x) __attribute__((nothrow)) __attribute__((const));
extern long labs(long __x) __attribute__((nothrow)) __attribute__((const));
extern long long llabs(long long __x) __attribute__((nothrow)) __attribute__((const));
extern div_t div(int __numer, int __denom) __attribute__((nothrow)) __attribute__((const));
extern ldiv_t ldiv(long __numer, long __denom) __attribute__((nothrow)) __attribute__((const));
extern lldiv_t lldiv(long long __numer, long long __denom) __attribute__((nothrow)) __attribute__((const));
extern char *ecvt(double __value, int __ndigit, int *restrict __decpt, int *restrict __sign) __attribute__((nothrow)) __attribute__((nonnull(3, 4)));
extern char *fcvt(double __value, int __ndigit, int *restrict __decpt, int *restrict __sign) __attribute__((nothrow)) __attribute__((nonnull(3, 4)));
extern char *gcvt(double __value, int __ndigit, char *__buf) __attribute__((nothrow)) __attribute__((nonnull(3)));
extern char *qecvt(long double __value, int __ndigit, int *restrict __decpt, int *restrict __sign) __attribute__((nothrow)) __attribute__((nonnull(3, 4)));
extern char *qfcvt(long double __value, int __ndigit, int *restrict __decpt, int *restrict __sign) __attribute__((nothrow)) __attribute__((nonnull(3, 4)));
extern char *qgcvt(long double __value, int __ndigit, char *__buf) __attribute__((nothrow)) __attribute__((nonnull(3)));
extern int ecvt_r(double __value, int __ndigit, int *restrict __decpt, int *restrict __sign, char *restrict __buf, size_t __len) __attribute__((nothrow)) __attribute__((nonnull(3, 4, 5)));
extern int fcvt_r(double __value, int __ndigit, int *restrict __decpt, int *restrict __sign, char *restrict __buf, size_t __len) __attribute__((nothrow)) __attribute__((nonnull(3, 4, 5)));
extern int qecvt_r(long double __value, int __ndigit, int *restrict __decpt, int *restrict __sign, char *restrict __buf, size_t __len) __attribute__((nothrow)) __attribute__((nonnull(3, 4, 5)));
extern int qfcvt_r(long double __value, int __ndigit, int *restrict __decpt, int *restrict __sign, char *restrict __buf, size_t __len) __attribute__((nothrow)) __attribute__((nonnull(3, 4, 5)));
extern int mblen(const char *__s, size_t __n) __attribute__((nothrow));
extern int mbtowc(wchar_t *restrict __pwc, const char *restrict __s, size_t __n) __attribute__((nothrow));
extern int wctomb(char *__s, wchar_t __wchar) __attribute__((nothrow));
extern size_t mbstowcs(wchar_t *restrict __pwcs, const char *restrict __s, size_t __n) __attribute__((nothrow));
extern size_t wcstombs(char *restrict __s, const wchar_t *restrict __pwcs, size_t __n) __attribute__((nothrow));
extern int rpmatch(const char *__response) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int getsubopt(char **restrict __optionp, char *const *restrict __tokens, char **restrict __valuep) __attribute__((nothrow)) __attribute__((nonnull(1, 2, 3)));
extern int getloadavg(double __loadavg[], int __nelem) __attribute__((nothrow)) __attribute__((nonnull(1)));
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef struct {
    int __count;
    union {
        unsigned int __wch;
        char __wchb[4];
    } __value;
} __mbstate_t;
typedef struct _G_fpos_t {
    __off_t __pos;
    __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t {
    __off64_t __pos;
    __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE {
    int _flags;
    char *_IO_read_ptr;
    char *_IO_read_end;
    char *_IO_read_base;
    char *_IO_write_base;
    char *_IO_write_ptr;
    char *_IO_write_end;
    char *_IO_buf_base;
    char *_IO_buf_end;
    char *_IO_save_base;
    char *_IO_backup_base;
    char *_IO_save_end;
    struct _IO_marker *_markers;
    struct _IO_FILE *_chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    unsigned short _cur_column;
    signed char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t *_lock;
    __off64_t _offset;
    struct _IO_codecvt *_codecvt;
    struct _IO_wide_data *_wide_data;
    struct _IO_FILE *_freeres_list;
    void *_freeres_buf;
    size_t __pad5;
    int _mode;
    char _unused2[20];
};
typedef __gnuc_va_list va_list;
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove(const char *__filename) __attribute__((nothrow));
extern int rename(const char *__old, const char *__new) __attribute__((nothrow));
extern int renameat(int __oldfd, const char *__old, int __newfd, const char *__new) __attribute__((nothrow));
extern FILE *tmpfile();
extern char *tmpnam(char *__s) __attribute__((nothrow));
extern char *tmpnam_r(char *__s) __attribute__((nothrow));
extern char *tempnam(const char *__dir, const char *__pfx) __attribute__((nothrow)) __attribute__((malloc));
extern int fclose(FILE *__stream);
extern int fflush(FILE *__stream);
extern int fflush_unlocked(FILE *__stream);
extern FILE *fopen(const char *restrict __filename, const char *restrict __modes);
extern FILE *freopen(const char *restrict __filename, const char *restrict __modes, FILE *restrict __stream);
extern FILE *fdopen(int __fd, const char *__modes) __attribute__((nothrow));
extern FILE *fmemopen(void *__s, size_t __len, const char *__modes) __attribute__((nothrow));
extern FILE *open_memstream(char **__bufloc, size_t *__sizeloc) __attribute__((nothrow));
extern void setbuf(FILE *restrict __stream, char *restrict __buf) __attribute__((nothrow));
extern int setvbuf(FILE *restrict __stream, char *restrict __buf, int __modes, size_t __n) __attribute__((nothrow));
extern void setbuffer(FILE *restrict __stream, char *restrict __buf, size_t __size) __attribute__((nothrow));
extern void setlinebuf(FILE *__stream) __attribute__((nothrow));
extern int fprintf(FILE *restrict __stream, const char *restrict __format, ...);
extern int printf(const char *restrict __format, ...);
extern int sprintf(char *restrict __s, const char *restrict __format, ...) __attribute__((nothrow));
extern int vfprintf(FILE *restrict __s, const char *restrict __format, __gnuc_va_list __arg);
extern int vprintf(const char *restrict __format, __gnuc_va_list __arg);
extern int vsprintf(char *restrict __s, const char *restrict __format, __gnuc_va_list __arg) __attribute__((nothrow));
extern int snprintf(char *restrict __s, size_t __maxlen, const char *restrict __format, ...) __attribute__((nothrow)) __attribute__((format(printf, 3, 4)));
extern int vsnprintf(char *restrict __s, size_t __maxlen, const char *restrict __format, __gnuc_va_list __arg) __attribute__((nothrow)) __attribute__((format(printf, 3, 0)));
extern int vdprintf(int __fd, const char *restrict __fmt, __gnuc_va_list __arg) __attribute__((format(printf, 2, 0)));
extern int dprintf(int __fd, const char *restrict __fmt, ...) __attribute__((format(printf, 2, 3)));
extern int fscanf(FILE *restrict __stream, const char *restrict __format, ...);
extern int scanf(const char *restrict __format, ...);
extern int sscanf(const char *restrict __s, const char *restrict __format, ...) __attribute__((nothrow));
extern int fscanf(FILE *restrict __stream, const char *restrict __format, ...) asm("__isoc99_fscanf");
extern int scanf(const char *restrict __format, ...) asm("__isoc99_scanf");
extern int sscanf(const char *restrict __s, const char *restrict __format, ...) asm("__isoc99_sscanf") __attribute__((nothrow));
extern int vfscanf(FILE *restrict __s, const char *restrict __format, __gnuc_va_list __arg) __attribute__((format(scanf, 2, 0)));
extern int vscanf(const char *restrict __format, __gnuc_va_list __arg) __attribute__((format(scanf, 1, 0)));
extern int vsscanf(const char *restrict __s, const char *restrict __format, __gnuc_va_list __arg) __attribute__((nothrow)) __attribute__((format(scanf, 2, 0)));
extern int vfscanf(FILE *restrict __s, const char *restrict __format, __gnuc_va_list __arg) asm("__isoc99_vfscanf") __attribute__((format(scanf, 2, 0)));
extern int vscanf(const char *restrict __format, __gnuc_va_list __arg) asm("__isoc99_vscanf") __attribute__((format(scanf, 1, 0)));
extern int vsscanf(const char *restrict __s, const char *restrict __format, __gnuc_va_list __arg) asm("__isoc99_vsscanf") __attribute__((nothrow)) __attribute__((format(scanf, 2, 0)));
extern int fgetc(FILE *__stream);
extern int getc(FILE *__stream);
extern int getchar();
extern int getc_unlocked(FILE *__stream);
extern int getchar_unlocked();
extern int fgetc_unlocked(FILE *__stream);
extern int fputc(int __c, FILE *__stream);
extern int putc(int __c, FILE *__stream);
extern int putchar(int __c);
extern int fputc_unlocked(int __c, FILE *__stream);
extern int putc_unlocked(int __c, FILE *__stream);
extern int putchar_unlocked(int __c);
extern int getw(FILE *__stream);
extern int putw(int __w, FILE *__stream);
extern char *fgets(char *restrict __s, int __n, FILE *restrict __stream);
extern __ssize_t __getdelim(char **restrict __lineptr, size_t *restrict __n, int __delimiter, FILE *restrict __stream);
extern __ssize_t getdelim(char **restrict __lineptr, size_t *restrict __n, int __delimiter, FILE *restrict __stream);
extern __ssize_t getline(char **restrict __lineptr, size_t *restrict __n, FILE *restrict __stream);
extern int fputs(const char *restrict __s, FILE *restrict __stream);
extern int puts(const char *__s);
extern int ungetc(int __c, FILE *__stream);
extern unsigned long fread(void *restrict __ptr, size_t __size, size_t __n, FILE *restrict __stream);
extern unsigned long fwrite(const void *restrict __ptr, size_t __size, size_t __n, FILE *restrict __s);
extern size_t fread_unlocked(void *restrict __ptr, size_t __size, size_t __n, FILE *restrict __stream);
extern size_t fwrite_unlocked(const void *restrict __ptr, size_t __size, size_t __n, FILE *restrict __stream);
extern int fseek(FILE *__stream, long __off, int __whence);
extern long ftell(FILE *__stream);
extern void rewind(FILE *__stream);
extern int fseeko(FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello(FILE *__stream);
extern int fgetpos(FILE *restrict __stream, fpos_t *restrict __pos);
extern int fsetpos(FILE *__stream, const fpos_t *__pos);
extern void clearerr(FILE *__stream) __attribute__((nothrow));
extern int feof(FILE *__stream) __attribute__((nothrow));
extern int ferror(FILE *__stream) __attribute__((nothrow));
extern void clearerr_unlocked(FILE *__stream) __attribute__((nothrow));
extern int feof_unlocked(FILE *__stream) __attribute__((nothrow));
extern int ferror_unlocked(FILE *__stream) __attribute__((nothrow));
extern void perror(const char *__s);
extern int sys_nerr;
extern const char *const sys_errlist[];
extern int fileno(FILE *__stream) __attribute__((nothrow));
extern int fileno_unlocked(FILE *__stream) __attribute__((nothrow));
extern FILE *popen(const char *__command, const char *__modes);
extern int pclose(FILE *__stream);
extern char *ctermid(char *__s) __attribute__((nothrow));
extern void flockfile(FILE *__stream) __attribute__((nothrow));
extern int ftrylockfile(FILE *__stream) __attribute__((nothrow));
extern void funlockfile(FILE *__stream) __attribute__((nothrow));
extern int __uflow(FILE *);
extern int __overflow(FILE *, int);
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int_fast16_t;
typedef long int_fast32_t;
typedef long int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long uint_fast16_t;
typedef unsigned long uint_fast32_t;
typedef unsigned long uint_fast64_t;
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
extern void *memcpy(void *restrict __dest, const void *restrict __src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern void *memmove(void *__dest, const void *__src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern void *memccpy(void *restrict __dest, const void *restrict __src, int __c, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern void *memset(void *__s, int __c, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int memcmp(const void *__s1, const void *__s2, size_t __n) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern void *memchr(const void *__s, int __c, size_t __n) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern char *strcpy(char *restrict __dest, const char *restrict __src) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *strncpy(char *restrict __dest, const char *restrict __src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *strcat(char *restrict __dest, const char *restrict __src) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *strncat(char *restrict __dest, const char *restrict __src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern int strcmp(const char *__s1, const char *__s2) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern int strncmp(const char *__s1, const char *__s2, size_t __n) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern int strcoll(const char *__s1, const char *__s2) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern unsigned long strxfrm(char *restrict __dest, const char *restrict __src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(2)));
struct __locale_struct {
    struct __locale_data *__locales[13];
    const unsigned short *__ctype_b;
    const int *__ctype_tolower;
    const int *__ctype_toupper;
    const char *__names[13];
};
typedef struct __locale_struct *__locale_t;
typedef __locale_t locale_t;
extern int strcoll_l(const char *__s1, const char *__s2, locale_t __l) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2, 3)));
extern size_t strxfrm_l(char *__dest, const char *__src, size_t __n, locale_t __l) __attribute__((nothrow)) __attribute__((nonnull(2, 4)));
extern char *strdup(const char *__s) __attribute__((nothrow)) __attribute__((malloc)) __attribute__((nonnull(1)));
extern char *strndup(const char *__string, size_t __n) __attribute__((nothrow)) __attribute__((malloc)) __attribute__((nonnull(1)));
extern char *strchr(const char *__s, int __c) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern char *strrchr(const char *__s, int __c) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern unsigned long strcspn(const char *__s, const char *__reject) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern unsigned long strspn(const char *__s, const char *__accept) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern char *strstr(const char *__haystack, const char *__needle) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern char *strtok(char *restrict __s, const char *restrict __delim) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern char *__strtok_r(char *restrict __s, const char *restrict __delim, char **restrict __save_ptr) __attribute__((nothrow)) __attribute__((nonnull(2, 3)));
extern char *strtok_r(char *restrict __s, const char *restrict __delim, char **restrict __save_ptr) __attribute__((nothrow)) __attribute__((nonnull(2, 3)));
extern unsigned long strlen(const char *__s) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern size_t strnlen(const char *__string, size_t __maxlen) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern char *strerror(int __errnum) __attribute__((nothrow));
extern int strerror_r(int __errnum, char *__buf, size_t __buflen) asm("__xpg_strerror_r") __attribute__((nothrow)) __attribute__((nonnull(2)));
extern char *strerror_l(int __errnum, locale_t __l) __attribute__((nothrow));
extern int bcmp(const void *__s1, const void *__s2, size_t __n) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern void bcopy(const void *__src, void *__dest, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern void bzero(void *__s, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern char *index(const char *__s, int __c) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern char *rindex(const char *__s, int __c) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1)));
extern int ffs(int __i) __attribute__((nothrow)) __attribute__((const));
extern int ffsl(long __l) __attribute__((nothrow)) __attribute__((const));
extern int ffsll(long long __ll) __attribute__((nothrow)) __attribute__((const));
extern int strcasecmp(const char *__s1, const char *__s2) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern int strncasecmp(const char *__s1, const char *__s2, size_t __n) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2)));
extern int strcasecmp_l(const char *__s1, const char *__s2, locale_t __loc) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2, 3)));
extern int strncasecmp_l(const char *__s1, const char *__s2, size_t __n, locale_t __loc) __attribute__((nothrow)) __attribute__((pure)) __attribute__((nonnull(1, 2, 4)));
extern void explicit_bzero(void *__s, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern char *strsep(char **restrict __stringp, const char *restrict __delim) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *strsignal(int __sig) __attribute__((nothrow));
extern char *__stpcpy(char *restrict __dest, const char *restrict __src) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *stpcpy(char *restrict __dest, const char *restrict __src) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *__stpncpy(char *restrict __dest, const char *restrict __src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
extern char *stpncpy(char *restrict __dest, const char *restrict __src, size_t __n) __attribute__((nothrow)) __attribute__((nonnull(1, 2)));
typedef long ptrdiff_t;
typedef struct {
    long long __clang_max_align_nonce1 __attribute__((aligned(__alignof(long long))));
    long double __clang_max_align_nonce2 __attribute__((aligned(__alignof(long double))));
} max_align_t;
struct tm {
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
    long tm_gmtoff;
    const char *tm_zone;
};
struct itimerspec {
    struct timespec it_interval;
    struct timespec it_value;
};
struct sigevent;
extern clock_t clock() __attribute__((nothrow));
extern time_t time(time_t *__timer) __attribute__((nothrow));
extern double difftime(time_t __time1, time_t __time0) __attribute__((nothrow)) __attribute__((const));
extern time_t mktime(struct tm *__tp) __attribute__((nothrow));
extern size_t strftime(char *restrict __s, size_t __maxsize, const char *restrict __format, const struct tm *restrict __tp) __attribute__((nothrow));
extern size_t strftime_l(char *restrict __s, size_t __maxsize, const char *restrict __format, const struct tm *restrict __tp, locale_t __loc) __attribute__((nothrow));
extern struct tm *gmtime(const time_t *__timer) __attribute__((nothrow));
extern struct tm *localtime(const time_t *__timer) __attribute__((nothrow));
extern struct tm *gmtime_r(const time_t *restrict __timer, struct tm *restrict __tp) __attribute__((nothrow));
extern struct tm *localtime_r(const time_t *restrict __timer, struct tm *restrict __tp) __attribute__((nothrow));
extern char *asctime(const struct tm *__tp) __attribute__((nothrow));
extern char *ctime(const time_t *__timer) __attribute__((nothrow));
extern char *asctime_r(const struct tm *restrict __tp, char *restrict __buf) __attribute__((nothrow));
extern char *ctime_r(const time_t *restrict __timer, char *restrict __buf) __attribute__((nothrow));
extern char *__tzname[2];
extern int __daylight;
extern long __timezone;
extern char *tzname[2];
extern void tzset() __attribute__((nothrow));
extern int daylight;
extern long timezone;
extern time_t timegm(struct tm *__tp) __attribute__((nothrow));
extern time_t timelocal(struct tm *__tp) __attribute__((nothrow));
extern int dysize(int __year) __attribute__((nothrow)) __attribute__((const));
extern int nanosleep(const struct timespec *__requested_time, struct timespec *__remaining);
extern int clock_getres(clockid_t __clock_id, struct timespec *__res) __attribute__((nothrow));
extern int clock_gettime(clockid_t __clock_id, struct timespec *__tp) __attribute__((nothrow));
extern int clock_settime(clockid_t __clock_id, const struct timespec *__tp) __attribute__((nothrow));
extern int clock_nanosleep(clockid_t __clock_id, int __flags, const struct timespec *__req, struct timespec *__rem);
extern int clock_getcpuclockid(pid_t __pid, clockid_t *__clock_id) __attribute__((nothrow));
extern int timer_create(clockid_t __clock_id, struct sigevent *restrict __evp, timer_t *restrict __timerid) __attribute__((nothrow));
extern int timer_delete(timer_t __timerid) __attribute__((nothrow));
extern int timer_settime(timer_t __timerid, int __flags, const struct itimerspec *restrict __value, struct itimerspec *restrict __ovalue) __attribute__((nothrow));
extern int timer_gettime(timer_t __timerid, struct itimerspec *__value) __attribute__((nothrow));
extern int timer_getoverrun(timer_t __timerid) __attribute__((nothrow));
extern int timespec_get(struct timespec *__ts, int __base) __attribute__((nothrow)) __attribute__((nonnull(1)));
typedef float float_t;
typedef double double_t;
extern int __fpclassify(double __value) __attribute__((nothrow)) __attribute__((const));
extern int __signbit(double __value) __attribute__((nothrow)) __attribute__((const));
extern int __isinf(double __value) __attribute__((nothrow)) __attribute__((const));
extern int __finite(double __value) __attribute__((nothrow)) __attribute__((const));
extern int __isnan(double __value) __attribute__((nothrow)) __attribute__((const));
extern int __iseqsig(double __x, double __y) __attribute__((nothrow));
extern int __issignaling(double __value) __attribute__((nothrow)) __attribute__((const));
extern double acos(double __x) __attribute__((nothrow));
extern double __acos(double __x) __attribute__((nothrow));
extern double asin(double __x) __attribute__((nothrow));
extern double __asin(double __x) __attribute__((nothrow));
extern double atan(double __x) __attribute__((nothrow));
extern double __atan(double __x) __attribute__((nothrow));
extern double atan2(double __y, double __x) __attribute__((nothrow));
extern double __atan2(double __y, double __x) __attribute__((nothrow));
extern double cos(double __x) __attribute__((nothrow));
extern double __cos(double __x) __attribute__((nothrow));
extern double sin(double __x) __attribute__((nothrow));
extern double __sin(double __x) __attribute__((nothrow));
extern double tan(double __x) __attribute__((nothrow));
extern double __tan(double __x) __attribute__((nothrow));
extern double cosh(double __x) __attribute__((nothrow));
extern double __cosh(double __x) __attribute__((nothrow));
extern double sinh(double __x) __attribute__((nothrow));
extern double __sinh(double __x) __attribute__((nothrow));
extern double tanh(double __x) __attribute__((nothrow));
extern double __tanh(double __x) __attribute__((nothrow));
extern double acosh(double __x) __attribute__((nothrow));
extern double __acosh(double __x) __attribute__((nothrow));
extern double asinh(double __x) __attribute__((nothrow));
extern double __asinh(double __x) __attribute__((nothrow));
extern double atanh(double __x) __attribute__((nothrow));
extern double __atanh(double __x) __attribute__((nothrow));
extern double exp(double __x) __attribute__((nothrow));
extern double __exp(double __x) __attribute__((nothrow));
extern double frexp(double __x, int *__exponent) __attribute__((nothrow));
extern double __frexp(double __x, int *__exponent) __attribute__((nothrow));
extern double ldexp(double __x, int __exponent) __attribute__((nothrow));
extern double __ldexp(double __x, int __exponent) __attribute__((nothrow));
extern double log(double __x) __attribute__((nothrow));
extern double __log(double __x) __attribute__((nothrow));
extern double log10(double __x) __attribute__((nothrow));
extern double __log10(double __x) __attribute__((nothrow));
extern double modf(double __x, double *__iptr) __attribute__((nothrow));
extern double __modf(double __x, double *__iptr) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern double expm1(double __x) __attribute__((nothrow));
extern double __expm1(double __x) __attribute__((nothrow));
extern double log1p(double __x) __attribute__((nothrow));
extern double __log1p(double __x) __attribute__((nothrow));
extern double logb(double __x) __attribute__((nothrow));
extern double __logb(double __x) __attribute__((nothrow));
extern double exp2(double __x) __attribute__((nothrow));
extern double __exp2(double __x) __attribute__((nothrow));
extern double log2(double __x) __attribute__((nothrow));
extern double __log2(double __x) __attribute__((nothrow));
extern double pow(double __x, double __y) __attribute__((nothrow));
extern double __pow(double __x, double __y) __attribute__((nothrow));
extern double sqrt(double __x) __attribute__((nothrow));
extern double __sqrt(double __x) __attribute__((nothrow));
extern double hypot(double __x, double __y) __attribute__((nothrow));
extern double __hypot(double __x, double __y) __attribute__((nothrow));
extern double cbrt(double __x) __attribute__((nothrow));
extern double __cbrt(double __x) __attribute__((nothrow));
extern double ceil(double __x) __attribute__((nothrow)) __attribute__((const));
extern double __ceil(double __x) __attribute__((nothrow)) __attribute__((const));
extern double fabs(double __x) __attribute__((nothrow)) __attribute__((const));
extern double __fabs(double __x) __attribute__((nothrow)) __attribute__((const));
extern double floor(double __x) __attribute__((nothrow)) __attribute__((const));
extern double __floor(double __x) __attribute__((nothrow)) __attribute__((const));
extern double fmod(double __x, double __y) __attribute__((nothrow));
extern double __fmod(double __x, double __y) __attribute__((nothrow));
extern int isinf(double __value) __attribute__((nothrow)) __attribute__((const));
extern int finite(double __value) __attribute__((nothrow)) __attribute__((const));
extern double drem(double __x, double __y) __attribute__((nothrow));
extern double __drem(double __x, double __y) __attribute__((nothrow));
extern double significand(double __x) __attribute__((nothrow));
extern double __significand(double __x) __attribute__((nothrow));
extern double copysign(double __x, double __y) __attribute__((nothrow)) __attribute__((const));
extern double __copysign(double __x, double __y) __attribute__((nothrow)) __attribute__((const));
extern double nan(const char *__tagb) __attribute__((nothrow));
extern double __nan(const char *__tagb) __attribute__((nothrow));
extern int isnan(double __value) __attribute__((nothrow)) __attribute__((const));
extern double j0(double) __attribute__((nothrow));
extern double __j0(double) __attribute__((nothrow));
extern double j1(double) __attribute__((nothrow));
extern double __j1(double) __attribute__((nothrow));
extern double jn(int, double) __attribute__((nothrow));
extern double __jn(int, double) __attribute__((nothrow));
extern double y0(double) __attribute__((nothrow));
extern double __y0(double) __attribute__((nothrow));
extern double y1(double) __attribute__((nothrow));
extern double __y1(double) __attribute__((nothrow));
extern double yn(int, double) __attribute__((nothrow));
extern double __yn(int, double) __attribute__((nothrow));
extern double erf(double) __attribute__((nothrow));
extern double __erf(double) __attribute__((nothrow));
extern double erfc(double) __attribute__((nothrow));
extern double __erfc(double) __attribute__((nothrow));
extern double lgamma(double) __attribute__((nothrow));
extern double __lgamma(double) __attribute__((nothrow));
extern double tgamma(double) __attribute__((nothrow));
extern double __tgamma(double) __attribute__((nothrow));
extern double gamma(double) __attribute__((nothrow));
extern double __gamma(double) __attribute__((nothrow));
extern double lgamma_r(double, int *__signgamp) __attribute__((nothrow));
extern double __lgamma_r(double, int *__signgamp) __attribute__((nothrow));
extern double rint(double __x) __attribute__((nothrow));
extern double __rint(double __x) __attribute__((nothrow));
extern double nextafter(double __x, double __y) __attribute__((nothrow));
extern double __nextafter(double __x, double __y) __attribute__((nothrow));
extern double nexttoward(double __x, long double __y) __attribute__((nothrow));
extern double __nexttoward(double __x, long double __y) __attribute__((nothrow));
extern double remainder(double __x, double __y) __attribute__((nothrow));
extern double __remainder(double __x, double __y) __attribute__((nothrow));
extern double scalbn(double __x, int __n) __attribute__((nothrow));
extern double __scalbn(double __x, int __n) __attribute__((nothrow));
extern int ilogb(double __x) __attribute__((nothrow));
extern int __ilogb(double __x) __attribute__((nothrow));
extern double scalbln(double __x, long __n) __attribute__((nothrow));
extern double __scalbln(double __x, long __n) __attribute__((nothrow));
extern double nearbyint(double __x) __attribute__((nothrow));
extern double __nearbyint(double __x) __attribute__((nothrow));
extern double round(double __x) __attribute__((nothrow)) __attribute__((const));
extern double __round(double __x) __attribute__((nothrow)) __attribute__((const));
extern double trunc(double __x) __attribute__((nothrow)) __attribute__((const));
extern double __trunc(double __x) __attribute__((nothrow)) __attribute__((const));
extern double remquo(double __x, double __y, int *__quo) __attribute__((nothrow));
extern double __remquo(double __x, double __y, int *__quo) __attribute__((nothrow));
extern long lrint(double __x) __attribute__((nothrow));
extern long __lrint(double __x) __attribute__((nothrow));
extern long long llrint(double __x) __attribute__((nothrow));
extern long long __llrint(double __x) __attribute__((nothrow));
extern long lround(double __x) __attribute__((nothrow));
extern long __lround(double __x) __attribute__((nothrow));
extern long long llround(double __x) __attribute__((nothrow));
extern long long __llround(double __x) __attribute__((nothrow));
extern double fdim(double __x, double __y) __attribute__((nothrow));
extern double __fdim(double __x, double __y) __attribute__((nothrow));
extern double fmax(double __x, double __y) __attribute__((nothrow)) __attribute__((const));
extern double __fmax(double __x, double __y) __attribute__((nothrow)) __attribute__((const));
extern double fmin(double __x, double __y) __attribute__((nothrow)) __attribute__((const));
extern double __fmin(double __x, double __y) __attribute__((nothrow)) __attribute__((const));
extern double fma(double __x, double __y, double __z) __attribute__((nothrow));
extern double __fma(double __x, double __y, double __z) __attribute__((nothrow));
extern double scalb(double __x, double __n) __attribute__((nothrow));
extern double __scalb(double __x, double __n) __attribute__((nothrow));
extern int __fpclassifyf(float __value) __attribute__((nothrow)) __attribute__((const));
extern int __signbitf(float __value) __attribute__((nothrow)) __attribute__((const));
extern int __isinff(float __value) __attribute__((nothrow)) __attribute__((const));
extern int __finitef(float __value) __attribute__((nothrow)) __attribute__((const));
extern int __isnanf(float __value) __attribute__((nothrow)) __attribute__((const));
extern int __iseqsigf(float __x, float __y) __attribute__((nothrow));
extern int __issignalingf(float __value) __attribute__((nothrow)) __attribute__((const));
extern float acosf(float __x) __attribute__((nothrow));
extern float __acosf(float __x) __attribute__((nothrow));
extern float asinf(float __x) __attribute__((nothrow));
extern float __asinf(float __x) __attribute__((nothrow));
extern float atanf(float __x) __attribute__((nothrow));
extern float __atanf(float __x) __attribute__((nothrow));
extern float atan2f(float __y, float __x) __attribute__((nothrow));
extern float __atan2f(float __y, float __x) __attribute__((nothrow));
extern float cosf(float __x) __attribute__((nothrow));
extern float __cosf(float __x) __attribute__((nothrow));
extern float sinf(float __x) __attribute__((nothrow));
extern float __sinf(float __x) __attribute__((nothrow));
extern float tanf(float __x) __attribute__((nothrow));
extern float __tanf(float __x) __attribute__((nothrow));
extern float coshf(float __x) __attribute__((nothrow));
extern float __coshf(float __x) __attribute__((nothrow));
extern float sinhf(float __x) __attribute__((nothrow));
extern float __sinhf(float __x) __attribute__((nothrow));
extern float tanhf(float __x) __attribute__((nothrow));
extern float __tanhf(float __x) __attribute__((nothrow));
extern float acoshf(float __x) __attribute__((nothrow));
extern float __acoshf(float __x) __attribute__((nothrow));
extern float asinhf(float __x) __attribute__((nothrow));
extern float __asinhf(float __x) __attribute__((nothrow));
extern float atanhf(float __x) __attribute__((nothrow));
extern float __atanhf(float __x) __attribute__((nothrow));
extern float expf(float __x) __attribute__((nothrow));
extern float __expf(float __x) __attribute__((nothrow));
extern float frexpf(float __x, int *__exponent) __attribute__((nothrow));
extern float __frexpf(float __x, int *__exponent) __attribute__((nothrow));
extern float ldexpf(float __x, int __exponent) __attribute__((nothrow));
extern float __ldexpf(float __x, int __exponent) __attribute__((nothrow));
extern float logf(float __x) __attribute__((nothrow));
extern float __logf(float __x) __attribute__((nothrow));
extern float log10f(float __x) __attribute__((nothrow));
extern float __log10f(float __x) __attribute__((nothrow));
extern float modff(float __x, float *__iptr) __attribute__((nothrow));
extern float __modff(float __x, float *__iptr) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern float expm1f(float __x) __attribute__((nothrow));
extern float __expm1f(float __x) __attribute__((nothrow));
extern float log1pf(float __x) __attribute__((nothrow));
extern float __log1pf(float __x) __attribute__((nothrow));
extern float logbf(float __x) __attribute__((nothrow));
extern float __logbf(float __x) __attribute__((nothrow));
extern float exp2f(float __x) __attribute__((nothrow));
extern float __exp2f(float __x) __attribute__((nothrow));
extern float log2f(float __x) __attribute__((nothrow));
extern float __log2f(float __x) __attribute__((nothrow));
extern float powf(float __x, float __y) __attribute__((nothrow));
extern float __powf(float __x, float __y) __attribute__((nothrow));
extern float sqrtf(float __x) __attribute__((nothrow));
extern float __sqrtf(float __x) __attribute__((nothrow));
extern float hypotf(float __x, float __y) __attribute__((nothrow));
extern float __hypotf(float __x, float __y) __attribute__((nothrow));
extern float cbrtf(float __x) __attribute__((nothrow));
extern float __cbrtf(float __x) __attribute__((nothrow));
extern float ceilf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float __ceilf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float fabsf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float __fabsf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float floorf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float __floorf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float fmodf(float __x, float __y) __attribute__((nothrow));
extern float __fmodf(float __x, float __y) __attribute__((nothrow));
extern int isinff(float __value) __attribute__((nothrow)) __attribute__((const));
extern int finitef(float __value) __attribute__((nothrow)) __attribute__((const));
extern float dremf(float __x, float __y) __attribute__((nothrow));
extern float __dremf(float __x, float __y) __attribute__((nothrow));
extern float significandf(float __x) __attribute__((nothrow));
extern float __significandf(float __x) __attribute__((nothrow));
extern float copysignf(float __x, float __y) __attribute__((nothrow)) __attribute__((const));
extern float __copysignf(float __x, float __y) __attribute__((nothrow)) __attribute__((const));
extern float nanf(const char *__tagb) __attribute__((nothrow));
extern float __nanf(const char *__tagb) __attribute__((nothrow));
extern int isnanf(float __value) __attribute__((nothrow)) __attribute__((const));
extern float j0f(float) __attribute__((nothrow));
extern float __j0f(float) __attribute__((nothrow));
extern float j1f(float) __attribute__((nothrow));
extern float __j1f(float) __attribute__((nothrow));
extern float jnf(int, float) __attribute__((nothrow));
extern float __jnf(int, float) __attribute__((nothrow));
extern float y0f(float) __attribute__((nothrow));
extern float __y0f(float) __attribute__((nothrow));
extern float y1f(float) __attribute__((nothrow));
extern float __y1f(float) __attribute__((nothrow));
extern float ynf(int, float) __attribute__((nothrow));
extern float __ynf(int, float) __attribute__((nothrow));
extern float erff(float) __attribute__((nothrow));
extern float __erff(float) __attribute__((nothrow));
extern float erfcf(float) __attribute__((nothrow));
extern float __erfcf(float) __attribute__((nothrow));
extern float lgammaf(float) __attribute__((nothrow));
extern float __lgammaf(float) __attribute__((nothrow));
extern float tgammaf(float) __attribute__((nothrow));
extern float __tgammaf(float) __attribute__((nothrow));
extern float gammaf(float) __attribute__((nothrow));
extern float __gammaf(float) __attribute__((nothrow));
extern float lgammaf_r(float, int *__signgamp) __attribute__((nothrow));
extern float __lgammaf_r(float, int *__signgamp) __attribute__((nothrow));
extern float rintf(float __x) __attribute__((nothrow));
extern float __rintf(float __x) __attribute__((nothrow));
extern float nextafterf(float __x, float __y) __attribute__((nothrow));
extern float __nextafterf(float __x, float __y) __attribute__((nothrow));
extern float nexttowardf(float __x, long double __y) __attribute__((nothrow));
extern float __nexttowardf(float __x, long double __y) __attribute__((nothrow));
extern float remainderf(float __x, float __y) __attribute__((nothrow));
extern float __remainderf(float __x, float __y) __attribute__((nothrow));
extern float scalbnf(float __x, int __n) __attribute__((nothrow));
extern float __scalbnf(float __x, int __n) __attribute__((nothrow));
extern int ilogbf(float __x) __attribute__((nothrow));
extern int __ilogbf(float __x) __attribute__((nothrow));
extern float scalblnf(float __x, long __n) __attribute__((nothrow));
extern float __scalblnf(float __x, long __n) __attribute__((nothrow));
extern float nearbyintf(float __x) __attribute__((nothrow));
extern float __nearbyintf(float __x) __attribute__((nothrow));
extern float roundf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float __roundf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float truncf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float __truncf(float __x) __attribute__((nothrow)) __attribute__((const));
extern float remquof(float __x, float __y, int *__quo) __attribute__((nothrow));
extern float __remquof(float __x, float __y, int *__quo) __attribute__((nothrow));
extern long lrintf(float __x) __attribute__((nothrow));
extern long __lrintf(float __x) __attribute__((nothrow));
extern long long llrintf(float __x) __attribute__((nothrow));
extern long long __llrintf(float __x) __attribute__((nothrow));
extern long lroundf(float __x) __attribute__((nothrow));
extern long __lroundf(float __x) __attribute__((nothrow));
extern long long llroundf(float __x) __attribute__((nothrow));
extern long long __llroundf(float __x) __attribute__((nothrow));
extern float fdimf(float __x, float __y) __attribute__((nothrow));
extern float __fdimf(float __x, float __y) __attribute__((nothrow));
extern float fmaxf(float __x, float __y) __attribute__((nothrow)) __attribute__((const));
extern float __fmaxf(float __x, float __y) __attribute__((nothrow)) __attribute__((const));
extern float fminf(float __x, float __y) __attribute__((nothrow)) __attribute__((const));
extern float __fminf(float __x, float __y) __attribute__((nothrow)) __attribute__((const));
extern float fmaf(float __x, float __y, float __z) __attribute__((nothrow));
extern float __fmaf(float __x, float __y, float __z) __attribute__((nothrow));
extern float scalbf(float __x, float __n) __attribute__((nothrow));
extern float __scalbf(float __x, float __n) __attribute__((nothrow));
extern int __fpclassifyl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern int __signbitl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern int __isinfl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern int __finitel(long double __value) __attribute__((nothrow)) __attribute__((const));
extern int __isnanl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern int __iseqsigl(long double __x, long double __y) __attribute__((nothrow));
extern int __issignalingl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern long double acosl(long double __x) __attribute__((nothrow));
extern long double __acosl(long double __x) __attribute__((nothrow));
extern long double asinl(long double __x) __attribute__((nothrow));
extern long double __asinl(long double __x) __attribute__((nothrow));
extern long double atanl(long double __x) __attribute__((nothrow));
extern long double __atanl(long double __x) __attribute__((nothrow));
extern long double atan2l(long double __y, long double __x) __attribute__((nothrow));
extern long double __atan2l(long double __y, long double __x) __attribute__((nothrow));
extern long double cosl(long double __x) __attribute__((nothrow));
extern long double __cosl(long double __x) __attribute__((nothrow));
extern long double sinl(long double __x) __attribute__((nothrow));
extern long double __sinl(long double __x) __attribute__((nothrow));
extern long double tanl(long double __x) __attribute__((nothrow));
extern long double __tanl(long double __x) __attribute__((nothrow));
extern long double coshl(long double __x) __attribute__((nothrow));
extern long double __coshl(long double __x) __attribute__((nothrow));
extern long double sinhl(long double __x) __attribute__((nothrow));
extern long double __sinhl(long double __x) __attribute__((nothrow));
extern long double tanhl(long double __x) __attribute__((nothrow));
extern long double __tanhl(long double __x) __attribute__((nothrow));
extern long double acoshl(long double __x) __attribute__((nothrow));
extern long double __acoshl(long double __x) __attribute__((nothrow));
extern long double asinhl(long double __x) __attribute__((nothrow));
extern long double __asinhl(long double __x) __attribute__((nothrow));
extern long double atanhl(long double __x) __attribute__((nothrow));
extern long double __atanhl(long double __x) __attribute__((nothrow));
extern long double expl(long double __x) __attribute__((nothrow));
extern long double __expl(long double __x) __attribute__((nothrow));
extern long double frexpl(long double __x, int *__exponent) __attribute__((nothrow));
extern long double __frexpl(long double __x, int *__exponent) __attribute__((nothrow));
extern long double ldexpl(long double __x, int __exponent) __attribute__((nothrow));
extern long double __ldexpl(long double __x, int __exponent) __attribute__((nothrow));
extern long double logl(long double __x) __attribute__((nothrow));
extern long double __logl(long double __x) __attribute__((nothrow));
extern long double log10l(long double __x) __attribute__((nothrow));
extern long double __log10l(long double __x) __attribute__((nothrow));
extern long double modfl(long double __x, long double *__iptr) __attribute__((nothrow));
extern long double __modfl(long double __x, long double *__iptr) __attribute__((nothrow)) __attribute__((nonnull(2)));
extern long double expm1l(long double __x) __attribute__((nothrow));
extern long double __expm1l(long double __x) __attribute__((nothrow));
extern long double log1pl(long double __x) __attribute__((nothrow));
extern long double __log1pl(long double __x) __attribute__((nothrow));
extern long double logbl(long double __x) __attribute__((nothrow));
extern long double __logbl(long double __x) __attribute__((nothrow));
extern long double exp2l(long double __x) __attribute__((nothrow));
extern long double __exp2l(long double __x) __attribute__((nothrow));
extern long double log2l(long double __x) __attribute__((nothrow));
extern long double __log2l(long double __x) __attribute__((nothrow));
extern long double powl(long double __x, long double __y) __attribute__((nothrow));
extern long double __powl(long double __x, long double __y) __attribute__((nothrow));
extern long double sqrtl(long double __x) __attribute__((nothrow));
extern long double __sqrtl(long double __x) __attribute__((nothrow));
extern long double hypotl(long double __x, long double __y) __attribute__((nothrow));
extern long double __hypotl(long double __x, long double __y) __attribute__((nothrow));
extern long double cbrtl(long double __x) __attribute__((nothrow));
extern long double __cbrtl(long double __x) __attribute__((nothrow));
extern long double ceill(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double __ceill(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double fabsl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double __fabsl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double floorl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double __floorl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double fmodl(long double __x, long double __y) __attribute__((nothrow));
extern long double __fmodl(long double __x, long double __y) __attribute__((nothrow));
extern int isinfl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern int finitel(long double __value) __attribute__((nothrow)) __attribute__((const));
extern long double dreml(long double __x, long double __y) __attribute__((nothrow));
extern long double __dreml(long double __x, long double __y) __attribute__((nothrow));
extern long double significandl(long double __x) __attribute__((nothrow));
extern long double __significandl(long double __x) __attribute__((nothrow));
extern long double copysignl(long double __x, long double __y) __attribute__((nothrow)) __attribute__((const));
extern long double __copysignl(long double __x, long double __y) __attribute__((nothrow)) __attribute__((const));
extern long double nanl(const char *__tagb) __attribute__((nothrow));
extern long double __nanl(const char *__tagb) __attribute__((nothrow));
extern int isnanl(long double __value) __attribute__((nothrow)) __attribute__((const));
extern long double j0l(long double) __attribute__((nothrow));
extern long double __j0l(long double) __attribute__((nothrow));
extern long double j1l(long double) __attribute__((nothrow));
extern long double __j1l(long double) __attribute__((nothrow));
extern long double jnl(int, long double) __attribute__((nothrow));
extern long double __jnl(int, long double) __attribute__((nothrow));
extern long double y0l(long double) __attribute__((nothrow));
extern long double __y0l(long double) __attribute__((nothrow));
extern long double y1l(long double) __attribute__((nothrow));
extern long double __y1l(long double) __attribute__((nothrow));
extern long double ynl(int, long double) __attribute__((nothrow));
extern long double __ynl(int, long double) __attribute__((nothrow));
extern long double erfl(long double) __attribute__((nothrow));
extern long double __erfl(long double) __attribute__((nothrow));
extern long double erfcl(long double) __attribute__((nothrow));
extern long double __erfcl(long double) __attribute__((nothrow));
extern long double lgammal(long double) __attribute__((nothrow));
extern long double __lgammal(long double) __attribute__((nothrow));
extern long double tgammal(long double) __attribute__((nothrow));
extern long double __tgammal(long double) __attribute__((nothrow));
extern long double gammal(long double) __attribute__((nothrow));
extern long double __gammal(long double) __attribute__((nothrow));
extern long double lgammal_r(long double, int *__signgamp) __attribute__((nothrow));
extern long double __lgammal_r(long double, int *__signgamp) __attribute__((nothrow));
extern long double rintl(long double __x) __attribute__((nothrow));
extern long double __rintl(long double __x) __attribute__((nothrow));
extern long double nextafterl(long double __x, long double __y) __attribute__((nothrow));
extern long double __nextafterl(long double __x, long double __y) __attribute__((nothrow));
extern long double nexttowardl(long double __x, long double __y) __attribute__((nothrow));
extern long double __nexttowardl(long double __x, long double __y) __attribute__((nothrow));
extern long double remainderl(long double __x, long double __y) __attribute__((nothrow));
extern long double __remainderl(long double __x, long double __y) __attribute__((nothrow));
extern long double scalbnl(long double __x, int __n) __attribute__((nothrow));
extern long double __scalbnl(long double __x, int __n) __attribute__((nothrow));
extern int ilogbl(long double __x) __attribute__((nothrow));
extern int __ilogbl(long double __x) __attribute__((nothrow));
extern long double scalblnl(long double __x, long __n) __attribute__((nothrow));
extern long double __scalblnl(long double __x, long __n) __attribute__((nothrow));
extern long double nearbyintl(long double __x) __attribute__((nothrow));
extern long double __nearbyintl(long double __x) __attribute__((nothrow));
extern long double roundl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double __roundl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double truncl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double __truncl(long double __x) __attribute__((nothrow)) __attribute__((const));
extern long double remquol(long double __x, long double __y, int *__quo) __attribute__((nothrow));
extern long double __remquol(long double __x, long double __y, int *__quo) __attribute__((nothrow));
extern long lrintl(long double __x) __attribute__((nothrow));
extern long __lrintl(long double __x) __attribute__((nothrow));
extern long long llrintl(long double __x) __attribute__((nothrow));
extern long long __llrintl(long double __x) __attribute__((nothrow));
extern long lroundl(long double __x) __attribute__((nothrow));
extern long __lroundl(long double __x) __attribute__((nothrow));
extern long long llroundl(long double __x) __attribute__((nothrow));
extern long long __llroundl(long double __x) __attribute__((nothrow));
extern long double fdiml(long double __x, long double __y) __attribute__((nothrow));
extern long double __fdiml(long double __x, long double __y) __attribute__((nothrow));
extern long double fmaxl(long double __x, long double __y) __attribute__((nothrow)) __attribute__((const));
extern long double __fmaxl(long double __x, long double __y) __attribute__((nothrow)) __attribute__((const));
extern long double fminl(long double __x, long double __y) __attribute__((nothrow)) __attribute__((const));
extern long double __fminl(long double __x, long double __y) __attribute__((nothrow)) __attribute__((const));
extern long double fmal(long double __x, long double __y, long double __z) __attribute__((nothrow));
extern long double __fmal(long double __x, long double __y, long double __z) __attribute__((nothrow));
extern long double scalbl(long double __x, long double __n) __attribute__((nothrow));
extern long double __scalbl(long double __x, long double __n) __attribute__((nothrow));
extern int signgam;
enum  {
    FP_NAN = 0,
    FP_INFINITE = 1,
    FP_ZERO = 2,
    FP_SUBNORMAL = 3,
    FP_NORMAL = 4
};
extern void __assert_fail(const char *__assertion, const char *__file, unsigned int __line, const char *__function) __attribute__((nothrow));
extern void __assert_perror_fail(int __errnum, const char *__file, unsigned int __line, const char *__function) __attribute__((nothrow));
extern void __assert(const char *__assertion, const char *__file, int __line) __attribute__((nothrow));
typedef __sig_atomic_t sig_atomic_t;
union sigval {
    int sival_int;
    void *sival_ptr;
};
typedef union sigval __sigval_t;
typedef struct {
    int si_signo;
    int si_errno;
    int si_code;
    int __pad0;
    union {
        int _pad[28];
        struct {
            __pid_t si_pid;
            __uid_t si_uid;
        } _kill;
        struct {
            int si_tid;
            int si_overrun;
            __sigval_t si_sigval;
        } _timer;
        struct {
            __pid_t si_pid;
            __uid_t si_uid;
            __sigval_t si_sigval;
        } _rt;
        struct {
            __pid_t si_pid;
            __uid_t si_uid;
            int si_status;
            __clock_t si_utime;
            __clock_t si_stime;
        } _sigchld;
        struct {
            void *si_addr;
            short si_addr_lsb;
            union {
                struct {
                    void *_lower;
                    void *_upper;
                } _addr_bnd;
                __uint32_t _pkey;
            } _bounds;
        } _sigfault;
        struct {
            long si_band;
            int si_fd;
        } _sigpoll;
        struct {
            void *_call_addr;
            int _syscall;
            unsigned int _arch;
        } _sigsys;
    } _sifields;
} siginfo_t;
enum  {
    SI_ASYNCNL = -60,
    SI_DETHREAD = -7,
    SI_TKILL,
    SI_SIGIO,
    SI_ASYNCIO,
    SI_MESGQ,
    SI_TIMER,
    SI_QUEUE,
    SI_USER,
    SI_KERNEL = 128
};
enum  {
    ILL_ILLOPC = 1,
    ILL_ILLOPN,
    ILL_ILLADR,
    ILL_ILLTRP,
    ILL_PRVOPC,
    ILL_PRVREG,
    ILL_COPROC,
    ILL_BADSTK,
    ILL_BADIADDR
};
enum  {
    FPE_INTDIV = 1,
    FPE_INTOVF,
    FPE_FLTDIV,
    FPE_FLTOVF,
    FPE_FLTUND,
    FPE_FLTRES,
    FPE_FLTINV,
    FPE_FLTSUB,
    FPE_FLTUNK = 14,
    FPE_CONDTRAP
};
enum  {
    SEGV_MAPERR = 1,
    SEGV_ACCERR,
    SEGV_BNDERR,
    SEGV_PKUERR,
    SEGV_ACCADI,
    SEGV_ADIDERR,
    SEGV_ADIPERR
};
enum  {
    BUS_ADRALN = 1,
    BUS_ADRERR,
    BUS_OBJERR,
    BUS_MCEERR_AR,
    BUS_MCEERR_AO
};
enum  {
    CLD_EXITED = 1,
    CLD_KILLED,
    CLD_DUMPED,
    CLD_TRAPPED,
    CLD_STOPPED,
    CLD_CONTINUED
};
enum  {
    POLL_IN = 1,
    POLL_OUT,
    POLL_MSG,
    POLL_ERR,
    POLL_PRI,
    POLL_HUP
};
typedef __sigval_t sigval_t;
typedef struct sigevent {
    __sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;
    union {
        int _pad[12];
        __pid_t _tid;
        struct {
            void (*_function)(__sigval_t);
            pthread_attr_t *_attribute;
        } _sigev_thread;
    } _sigev_un;
} sigevent_t;
enum  {
    SIGEV_SIGNAL = 0,
    SIGEV_NONE,
    SIGEV_THREAD,
    SIGEV_THREAD_ID = 4
};
typedef void (*__sighandler_t)(int);
extern __sighandler_t __sysv_signal(int __sig, __sighandler_t __handler) __attribute__((nothrow));
extern __sighandler_t signal(int __sig, __sighandler_t __handler) __attribute__((nothrow));
extern int kill(__pid_t __pid, int __sig) __attribute__((nothrow));
extern int killpg(__pid_t __pgrp, int __sig) __attribute__((nothrow));
extern int raise(int __sig) __attribute__((nothrow));
extern __sighandler_t ssignal(int __sig, __sighandler_t __handler) __attribute__((nothrow));
extern int gsignal(int __sig) __attribute__((nothrow));
extern void psignal(int __sig, const char *__s);
extern void psiginfo(const siginfo_t *__pinfo, const char *__s);
extern int sigblock(int __mask) __attribute__((nothrow)) __attribute__((deprecated("")));
extern int sigsetmask(int __mask) __attribute__((nothrow)) __attribute__((deprecated("")));
extern int siggetmask() __attribute__((nothrow)) __attribute__((deprecated("")));
typedef __sighandler_t sig_t;
extern int sigemptyset(sigset_t *__set) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int sigfillset(sigset_t *__set) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int sigaddset(sigset_t *__set, int __signo) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int sigdelset(sigset_t *__set, int __signo) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int sigismember(const sigset_t *__set, int __signo) __attribute__((nothrow)) __attribute__((nonnull(1)));
struct sigaction {
    union {
        __sighandler_t sa_handler;
        void (*sa_sigaction)(int, siginfo_t *, void *);
    } __sigaction_handler;
    __sigset_t sa_mask;
    int sa_flags;
    void (*sa_restorer)(void);
};
extern int sigprocmask(int __how, const sigset_t *restrict __set, sigset_t *restrict __oset) __attribute__((nothrow));
extern int sigsuspend(const sigset_t *__set) __attribute__((nonnull(1)));
extern int sigaction(int __sig, const struct sigaction *restrict __act, struct sigaction *restrict __oact) __attribute__((nothrow));
extern int sigpending(sigset_t *__set) __attribute__((nothrow)) __attribute__((nonnull(1)));
extern int sigwait(const sigset_t *restrict __set, int *restrict __sig) __attribute__((nonnull(1, 2)));
extern int sigwaitinfo(const sigset_t *restrict __set, siginfo_t *restrict __info) __attribute__((nonnull(1)));
extern int sigtimedwait(const sigset_t *restrict __set, siginfo_t *restrict __info, const struct timespec *restrict __timeout) __attribute__((nonnull(1)));
extern int sigqueue(__pid_t __pid, int __sig, const union sigval __val) __attribute__((nothrow));
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];
struct _fpx_sw_bytes {
    __uint32_t magic1;
    __uint32_t extended_size;
    __uint64_t xstate_bv;
    __uint32_t xstate_size;
    __uint32_t __glibc_reserved1[7];
};
struct _fpreg {
    unsigned short significand[4];
    unsigned short exponent;
};
struct _fpxreg {
    unsigned short significand[4];
    unsigned short exponent;
    unsigned short __glibc_reserved1[3];
};
struct _xmmreg {
    __uint32_t element[4];
};
struct _fpstate {
    __uint16_t cwd;
    __uint16_t swd;
    __uint16_t ftw;
    __uint16_t fop;
    __uint64_t rip;
    __uint64_t rdp;
    __uint32_t mxcsr;
    __uint32_t mxcr_mask;
    struct _fpxreg _st[8];
    struct _xmmreg _xmm[16];
    __uint32_t __glibc_reserved1[24];
};
struct sigcontext {
    __uint64_t r8;
    __uint64_t r9;
    __uint64_t r10;
    __uint64_t r11;
    __uint64_t r12;
    __uint64_t r13;
    __uint64_t r14;
    __uint64_t r15;
    __uint64_t rdi;
    __uint64_t rsi;
    __uint64_t rbp;
    __uint64_t rbx;
    __uint64_t rdx;
    __uint64_t rax;
    __uint64_t rcx;
    __uint64_t rsp;
    __uint64_t rip;
    __uint64_t eflags;
    unsigned short cs;
    unsigned short gs;
    unsigned short fs;
    unsigned short __pad0;
    __uint64_t err;
    __uint64_t trapno;
    __uint64_t oldmask;
    __uint64_t cr2;
    union {
        struct _fpstate *fpstate;
        __uint64_t __fpstate_word;
    };
    __uint64_t __reserved1[8];
};
struct _xsave_hdr {
    __uint64_t xstate_bv;
    __uint64_t __glibc_reserved1[2];
    __uint64_t __glibc_reserved2[5];
};
struct _ymmh_state {
    __uint32_t ymmh_space[64];
};
struct _xstate {
    struct _fpstate fpstate;
    struct _xsave_hdr xstate_hdr;
    struct _ymmh_state ymmh;
};
extern int sigreturn(struct sigcontext *__scp) __attribute__((nothrow));
typedef struct {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
} stack_t;
typedef long long greg_t;
typedef greg_t gregset_t[23];
struct _libc_fpxreg {
    unsigned short significand[4];
    unsigned short exponent;
    unsigned short __glibc_reserved1[3];
};
struct _libc_xmmreg {
    __uint32_t element[4];
};
struct _libc_fpstate {
    __uint16_t cwd;
    __uint16_t swd;
    __uint16_t ftw;
    __uint16_t fop;
    __uint64_t rip;
    __uint64_t rdp;
    __uint32_t mxcsr;
    __uint32_t mxcr_mask;
    struct _libc_fpxreg _st[8];
    struct _libc_xmmreg _xmm[16];
    __uint32_t __glibc_reserved1[24];
};
typedef struct _libc_fpstate *fpregset_t;
typedef struct {
    gregset_t gregs;
    fpregset_t fpregs;
    unsigned long long __reserved1[8];
} mcontext_t;
typedef struct ucontext_t {
    unsigned long uc_flags;
    struct ucontext_t *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
    unsigned long long __ssp[4];
} ucontext_t;
extern int siginterrupt(int __sig, int __interrupt) __attribute__((nothrow));
enum  {
    SS_ONSTACK = 1,
    SS_DISABLE
};
extern int sigaltstack(const stack_t *restrict __ss, stack_t *restrict __oss) __attribute__((nothrow));
struct sigstack {
    void *ss_sp;
    int ss_onstack;
};
extern int sigstack(struct sigstack *__ss, struct sigstack *__oss) __attribute__((nothrow)) __attribute__((deprecated("")));
extern int pthread_sigmask(int __how, const __sigset_t *restrict __newmask, __sigset_t *restrict __oldmask) __attribute__((nothrow));
extern int pthread_kill(pthread_t __threadid, int __signo) __attribute__((nothrow));
extern int __libc_current_sigrtmin() __attribute__((nothrow));
extern int __libc_current_sigrtmax() __attribute__((nothrow));
enum  {
    _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
    _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
    _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
    _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
    _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
    _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
    _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
    _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
    _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
    _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
    _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
    _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
extern const unsigned short **__ctype_b_loc() __attribute__((nothrow)) __attribute__((const));
extern const __int32_t **__ctype_tolower_loc() __attribute__((nothrow)) __attribute__((const));
extern const __int32_t **__ctype_toupper_loc() __attribute__((nothrow)) __attribute__((const));
extern int isalnum(int) __attribute__((nothrow));
extern int isalpha(int) __attribute__((nothrow));
extern int iscntrl(int) __attribute__((nothrow));
extern int isdigit(int) __attribute__((nothrow));
extern int islower(int) __attribute__((nothrow));
extern int isgraph(int) __attribute__((nothrow));
extern int isprint(int) __attribute__((nothrow));
extern int ispunct(int) __attribute__((nothrow));
extern int isspace(int) __attribute__((nothrow));
extern int isupper(int) __attribute__((nothrow));
extern int isxdigit(int) __attribute__((nothrow));
extern int tolower(int __c) __attribute__((nothrow));
extern int toupper(int __c) __attribute__((nothrow));
extern int isblank(int) __attribute__((nothrow));
extern int isascii(int __c) __attribute__((nothrow));
extern int toascii(int __c) __attribute__((nothrow));
extern int _toupper(int) __attribute__((nothrow));
extern int _tolower(int) __attribute__((nothrow));
extern int isalnum_l(int, locale_t) __attribute__((nothrow));
extern int isalpha_l(int, locale_t) __attribute__((nothrow));
extern int iscntrl_l(int, locale_t) __attribute__((nothrow));
extern int isdigit_l(int, locale_t) __attribute__((nothrow));
extern int islower_l(int, locale_t) __attribute__((nothrow));
extern int isgraph_l(int, locale_t) __attribute__((nothrow));
extern int isprint_l(int, locale_t) __attribute__((nothrow));
extern int ispunct_l(int, locale_t) __attribute__((nothrow));
extern int isspace_l(int, locale_t) __attribute__((nothrow));
extern int isupper_l(int, locale_t) __attribute__((nothrow));
extern int isxdigit_l(int, locale_t) __attribute__((nothrow));
extern int isblank_l(int, locale_t) __attribute__((nothrow));
extern int __tolower_l(int __c, locale_t __l) __attribute__((nothrow));
extern int tolower_l(int __c, locale_t __l) __attribute__((nothrow));
extern int __toupper_l(int __c, locale_t __l) __attribute__((nothrow));
extern int toupper_l(int __c, locale_t __l) __attribute__((nothrow));
struct lconv {
    char *decimal_point;
    char *thousands_sep;
    char *grouping;
    char *int_curr_symbol;
    char *currency_symbol;
    char *mon_decimal_point;
    char *mon_thousands_sep;
    char *mon_grouping;
    char *positive_sign;
    char *negative_sign;
    char int_frac_digits;
    char frac_digits;
    char p_cs_precedes;
    char p_sep_by_space;
    char n_cs_precedes;
    char n_sep_by_space;
    char p_sign_posn;
    char n_sign_posn;
    char int_p_cs_precedes;
    char int_p_sep_by_space;
    char int_n_cs_precedes;
    char int_n_sep_by_space;
    char int_p_sign_posn;
    char int_n_sign_posn;
};
extern char *setlocale(int __category, const char *__locale) __attribute__((nothrow));
extern struct lconv *localeconv() __attribute__((nothrow));
extern locale_t newlocale(int __category_mask, const char *__locale, locale_t __base) __attribute__((nothrow));
extern locale_t duplocale(locale_t __dataset) __attribute__((nothrow));
extern void freelocale(locale_t __dataset) __attribute__((nothrow));
extern locale_t uselocale(locale_t __dataset) __attribute__((nothrow));
typedef long __jmp_buf[8];
struct __jmp_buf_tag {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
};
typedef struct __jmp_buf_tag jmp_buf[1];
extern int setjmp(jmp_buf __env) __attribute__((nothrow));
extern int __sigsetjmp(struct __jmp_buf_tag __env[1], int __savemask) __attribute__((nothrow));
extern int _setjmp(struct __jmp_buf_tag __env[1]) __attribute__((nothrow));
extern void longjmp(struct __jmp_buf_tag __env[1], int __val) __attribute__((nothrow));
extern void _longjmp(struct __jmp_buf_tag __env[1], int __val) __attribute__((nothrow));
typedef struct __jmp_buf_tag sigjmp_buf[1];
extern void siglongjmp(sigjmp_buf __env, int __val) __attribute__((nothrow));
extern int *__errno_location() __attribute__((nothrow)) __attribute__((const));
