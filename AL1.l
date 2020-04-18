%{
#include <stdio.h>
%}

%option noyywrap
%option yylineno

digito [0-9]
id #([a-zA-Z]|{digito})+
entero ({digito})+
decimal ({digito})*"."({digito})+
palRes @(if|else|while)
operArit +|-|*|/|%
operRel >|<|>=|<=|=|!=
operAsig :=
operLog +|*|¬
simbPunt {|}|(|)|;|,


%%
{id} { printf(" Identificador: %s\n", yytext);}
{entero} { printf(" Constante numerica (entero): %s\n", yytext);}
{decimal} { printf(" Constante numerica (decimal): %s\n", yytext);}
{palRes} { printf(" Palabra Reservada: %s\n", yytext);}
{operArit} { printf(" Operador Aritmetico: %s\n", yytext);}
{operRel} { printf(" Operador Relacional: %s\n", yytext);}
{operAsig} { printf(" Operador de Asignacion: %s\n", yytext);}
{operLog} { printf(" Operador Logico: %s\n", yytext);}
{simbPunt} { printf(" Simbolo de Puntuacion: %s\n", yytext);}
[ \t\n\r]+  {}

%%
