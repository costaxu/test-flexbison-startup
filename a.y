%{
#include <stdio.h>
#include <string.h>

void yywrap()
{

}

void yyerror(char * s)
{
    printf("%s\n",s);
}

int main()
{
    yyparse();
}
%}

%token  NUMBER TOKHEAT STATE TOKTARGET TOKTEMPERATURE
%%
commands: /* empty */
            | commands command
;

command: heat_switch
           | target_set
;

heat_switch:
               TOKHEAT STATE
    {
        printf("\tHeat turned on or off\n");
    }
;

target_set:
              TOKTARGET TOKTEMPERATURE NUMBER
    {
        printf("\tTemperature set\n");
    }
;
%%
