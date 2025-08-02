%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[+-]?[0-9]+ {
    int num = atoi(yytext);
    if (num > 0)
        printf("%d is POSITIVE\n", num);
    else if (num < 0)
        printf("%d is NEGATIVE\n", num);
    else
        printf("%d is ZERO\n", num);
}

.|\n ; // Ignore other characters and whitespace

%%

int main() {
    yylex();
    return 0;
}

