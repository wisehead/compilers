#define QSTRING 257
#define ID 258
#define COMMENT 259
#define SCREEN 260
#define TITLE 261
#define ITEM 262
#define COMMAND 263
#define ACTION 264
#define EXECUTE 265
#define EMPTY 266
#define MENU 267
#define QUIT 268
#define IGNORE 269
#define ATTRIBUTE 270
#define VISIBLE 271
#define INVISIBLE 272
#define END 273
#ifdef YYSTYPE
#undef  YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
#endif
#ifndef YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
typedef union {
    char    *string;     /* string buffer */
    int    cmd;          /* command value */
} YYSTYPE;
#endif /* !YYSTYPE_IS_DECLARED */
extern YYSTYPE yylval;
