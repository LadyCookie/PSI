/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    tMAIN = 258,
    tACCO = 259,
    tACCF = 260,
    tPRINTF = 261,
    tVAR = 262,
    tCONST = 263,
    tTYPEINT = 264,
    tINT = 265,
    tADD = 266,
    tSUB = 267,
    tMUL = 268,
    tDIV = 269,
    tEQ = 270,
    tPO = 271,
    tPF = 272,
    tCOM = 273,
    tEND = 274,
    tERROR = 275,
    tIF = 276,
    tELSE = 277,
    tWHILE = 278,
    tPE = 279,
    tCO = 280,
    tCF = 281,
    tAND = 282,
    tOR = 283
  };
#endif
/* Tokens.  */
#define tMAIN 258
#define tACCO 259
#define tACCF 260
#define tPRINTF 261
#define tVAR 262
#define tCONST 263
#define tTYPEINT 264
#define tINT 265
#define tADD 266
#define tSUB 267
#define tMUL 268
#define tDIV 269
#define tEQ 270
#define tPO 271
#define tPF 272
#define tCOM 273
#define tEND 274
#define tERROR 275
#define tIF 276
#define tELSE 277
#define tWHILE 278
#define tPE 279
#define tCO 280
#define tCF 281
#define tAND 282
#define tOR 283

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 31 "wh.y" /* yacc.c:1909  */

	int entier;
	char * string;

#line 115 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
