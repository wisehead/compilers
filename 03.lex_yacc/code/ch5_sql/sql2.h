#define NAME 257
#define STRING 258
#define INTNUM 259
#define APPROXNUM 260
#define OR 261
#define AND 262
#define NOT 263
#define COMPARISON 264
#define UMINUS 265
#define ALL 266
#define AMMSC 267
#define ANY 268
#define AS 269
#define ASC 270
#define AUTHORIZATION 271
#define BETWEEN 272
#define BY 273
#define CHARACTER 274
#define CHECK 275
#define CLOSE 276
#define COMMIT 277
#define CONTINUE 278
#define CREATE 279
#define CURRENT 280
#define CURSOR 281
#define DECIMAL 282
#define DECLARE 283
#define DEFAULT 284
#define DELETE 285
#define DESC 286
#define DISTINCT 287
#define DOUBLE 288
#define ESCAPE 289
#define EXISTS 290
#define FETCH 291
#define FLOAT 292
#define FOR 293
#define FOREIGN 294
#define FOUND 295
#define FROM 296
#define GOTO 297
#define GRANT 298
#define GROUP 299
#define HAVING 300
#define IN 301
#define INDICATOR 302
#define INSERT 303
#define INTEGER 304
#define INTO 305
#define IS 306
#define KEY 307
#define LANGUAGE 308
#define LIKE 309
#define NULLX 310
#define NUMERIC 311
#define OF 312
#define ON 313
#define OPEN 314
#define OPTION 315
#define ORDER 316
#define PARAMETER 317
#define PRECISION 318
#define PRIMARY 319
#define PRIVILEGES 320
#define PROCEDURE 321
#define PUBLIC 322
#define REAL 323
#define REFERENCES 324
#define ROLLBACK 325
#define SCHEMA 326
#define SELECT 327
#define SET 328
#define SMALLINT 329
#define SOME 330
#define SQLCODE 331
#define SQLERROR 332
#define TABLE 333
#define TO 334
#define UNION 335
#define UNIQUE 336
#define UPDATE 337
#define USER 338
#define VALUES 339
#define VIEW 340
#define WHENEVER 341
#define WHERE 342
#define WITH 343
#define WORK 344
#ifdef YYSTYPE
#undef  YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
#endif
#ifndef YYSTYPE_IS_DECLARED
#define YYSTYPE_IS_DECLARED 1
typedef union {
	int intval;
	double floatval;
	char *strval;
	int subtok;
} YYSTYPE;
#endif /* !YYSTYPE_IS_DECLARED */
extern YYSTYPE yylval;
