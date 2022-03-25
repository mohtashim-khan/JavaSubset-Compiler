/* Create C++ parser */
%skeleton "lalr1.cc"
%require "3.7"

/* Generate headers */
%defines

%define api.namespace {JCC}
%define api.parser.class {Parser}

%locations


%code requires{
    #include <vector>
    #include <iostream>
    #include <string>
    #include "./src/Node.hpp"

    // Forward Declaration.
    // Compiler outputs error otherwise
    class Driver;
}

%parse-param {Driver &driver}

%code {
    #include <iostream>
    #include <fstream>
    #include "./src/header.h"
    #include "./src/driver.hpp"
    
    // Define yylex
    #undef yylex
    #define yylex Driver.getToken
}



/* Semantic type / YYSTYPE */
%union{
    std::string* strVal;
    int ival;

    Node* node;
};


//EOF
%token T_EOF 0

// Literals
%token <strVal> T_ID "id"
%token <ival> T_NUM "number"
%token <strVal> T_STRING "string"

%token T_CESC_B
%token T_CESC_F
%token T_CESC_T
%token T_CESC_R
%token T_CESC_N
%token T_CESC_APOST
%token T_CESC_QUOT
%token T_CESC_SLASH

    // Reserved Words
%token T_TRUE "true"
%token T_FALSE "false"
%token T_BOOLEAN "boolean"
%token T_INT "int"
%token T_VOID "void"
%token T_IF "if"
%token T_ELSE "else"
%token T_WHILE "while"
%token T_BREAK "break"
%token T_RETURN "return"

    // Operators
%token T_ADD "+"
%token T_SUB "-"
%token T_MULT "*"
%token T_DIV "/"
%token T_MOD "%"
%token T_LT "<"
%token T_GT ">"
%token T_LTE "<="
%token T_GTE ">="
%token T_ASSIGN "="
%token T_EQUAL "=="
%token T_NEQUAL "!="
%token T_NOT "!"
%token T_AND "&&"
%token T_OR "||"

    // Other Things
%token T_LPARA "("
%token T_RPARA ")"
%token T_LBRACE "{"
%token T_RBRACE "}"
%token T_SEMICOLON ";"
%token T_COMMA ","

    // ERROR TOKEN
%token T_ERR 



%type <node> literal 
%type <node> type
%type <node> globaldeclarations
%type <node> globaldeclaration
%type <node> variabledeclaration
%type <node> identifier
%type <node> functiondeclaration
%type <node> functionheader
%type <node> functiondeclarator
%type <node> formalparameterlist
%type <node> formalparameter
%type <node> mainfunctiondeclaration
%type <node> mainfunctiondeclarator
%type <node> block
%type <node> blockstatements
%type <node> blockstatement
%type <node> statement
%type <node> statementexpression
%type <node> primary
%type <node> argumentlist
%type <node> functioninvocation
%type <node> postfixexpression
%type <node> unaryexpression
%type <node> multiplicativeexpression
%type <node> additiveexpression
%type <node> relationalexpression
%type <node> equalityexpression
%type <node> conditionalandexpression
%type <node> conditionalorexpression
%type <node> assignmentexpression
%type <node> assignment
%type <node> expression

%start start


/* Grammar from example Calc C++ Parser in Bison Docs */
%%
start           : /* empty */
                | globaldeclarations
                ;

literal         : T_NUM {$$ = new Node("Number", $1);}
                | T_STRING {$$ = new Node("String");}
                | T_TRUE {$$ = new Node("True");}
                | T_FALSE {$$ = new Node("False");}
                ;

type            : T_BOOLEAN
                | T_INT
                ;

globaldeclarations      : globaldeclaration
                        | globaldeclarations globaldeclaration
                        ;

globaldeclaration       : variabledeclaration
                        | functiondeclaration
                        | mainfunctiondeclaration
                        ;

variabledeclaration     : type identifier T_SEMICOLON
                        ;

identifier              : T_ID {$$ = new Node("ID");}
                        ;

functiondeclaration     : functionheader block
                        ;

functionheader          : type functiondeclarator
                        | T_VOID functiondeclarator
                        ;

functiondeclarator      : identifier T_LPARA formalparameterlist T_RPARA
                        | identifier T_LPARA T_RPARA
                        ;

formalparameterlist     : formalparameter
                        | formalparameterlist T_COMMA formalparameter
                        ;

formalparameter         : type identifier
                        ;

mainfunctiondeclaration : mainfunctiondeclarator block
                        ;

mainfunctiondeclarator  : identifier T_LPARA T_RPARA
                        ;

block                   : T_LBRACE blockstatements T_RBRACE
                        | T_LBRACE T_RBRACE
                        ;

blockstatements         : blockstatement
                        | blockstatements blockstatement
                        ;

blockstatement          : variabledeclaration
                        | statement
                        ;

statement               : block
                        | T_SEMICOLON
                        | statementexpression T_SEMICOLON
                        | T_BREAK T_SEMICOLON
                        | T_RETURN expression T_SEMICOLON
                        | T_RETURN T_SEMICOLON
                        | T_IF T_LPARA expression T_RPARA statement
                        | T_IF T_LPARA expression T_RPARA statement T_ELSE statement
                        | T_WHILE T_LPARA expression T_RPARA statement
                        ;

statementexpression     : assignment
                        | functioninvocation
                        ;

primary                 : literal
                        | T_LPARA expression T_RPARA
                        | functioninvocation
                        ;

argumentlist            : expression
                        | argumentlist T_COMMA expression
                        ;

functioninvocation      : identifier T_LPARA argumentlist T_RPARA
                        | identifier T_LPARA T_RPARA
                        ;

postfixexpression       : primary
                        | identifier
                        ;

unaryexpression         : T_SUB unaryexpression
                        | T_NOT unaryexpression
                        | postfixexpression
                        ;

multiplicativeexpression: unaryexpression
                        | multiplicativeexpression T_MULT unaryexpression
                        | multiplicativeexpression T_DIV unaryexpression
                        | multiplicativeexpression T_MOD unaryexpression
                        ;

additiveexpression      : multiplicativeexpression
                        | additiveexpression T_ADD multiplicativeexpression
                        | additiveexpression T_SUB multiplicativeexpression
                        ;

relationalexpression    : additiveexpression
                        | relationalexpression T_LT additiveexpression
                        | relationalexpression T_GT additiveexpression
                        | relationalexpression T_LTE additiveexpression
                        | relationalexpression T_GTE additiveexpression
                        ;

equalityexpression      : relationalexpression
                        | equalityexpression T_EQUAL relationalexpression
                        | equalityexpression T_NEQUAL relationalexpression
                        ;

conditionalandexpression: equalityexpression
                        | conditionalandexpression T_AND equalityexpression
                        ;

conditionalorexpression : conditionalandexpression
                        | conditionalorexpression T_OR conditionalandexpression
                        ;

assignmentexpression    : conditionalorexpression
                        | assignment
                        ;

assignment              : identifier T_ASSIGN assignmentexpression
                        ;

expression              : assignmentexpression
                        ;


%%

void JCC::Parser::error(const location_type &loc, const std::string &errmsg)
{
   std::cerr << "Error: " << errmsg << " at " << loc << "\n";
}