#include <stdio.h>
#include <stdlib.h>

extern FILE* yyin;

int main(int argc, char **argv){
    FILE *f;
    int token;
    if(argc < 2){
        printf("Faltan argumentos\n");
        exit(-1);
    }
    f = fopen(argv[1], "r");
    if(!f){
        printf("No se puedo abrir el archivo\n");
        exit(-1);
    }
    yyin =f;

    token = yylex();
    if(token == 0){
        printf("La cadena es aceptada\n");
    }else{
        printf("La cadena es rechazada\n");        
    }

    fclose(yyin);
    return 0;
}
