//Program to count number of lines , spaces , words and characters in a program 


%{
    int line=0,space=0,word=0,ch=0;
%}
%%
[\t] {space++;word++;}
[\n] {line++;word++;}
[" "] {space++;
        word++;}
[^\n\t] {ch++;}
%%
int yywrap(){}
int main()
{
    yylex();
    printf("lines : %d\n space : %d\n word :%d\n characters : %d",line,space,word,ch);
}
