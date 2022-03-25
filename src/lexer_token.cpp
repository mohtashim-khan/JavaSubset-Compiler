//This file was inspired and based on the tutorial made by my TA Shankar. 
//The source code for the tutorial can be found here : https://pages.cpsc.ucalgary.ca/~sankarasubramanian.g/411/

#include "header.h"

char const *getName(JCC::Parser::token::token_kind_type token)
{
    switch (token)
    {
    case JCC::Parser::token::T_ID:
        return "id";
    case JCC::Parser::token::T_NUM:
        return "number";

    case JCC::Parser::token::T_STRING:
        return "string";
    case JCC::Parser::token::T_TRUE:
        return "true";
    case JCC::Parser::token::T_FALSE:
        return "false";
    case JCC::Parser::token::T_BOOLEAN:
        return "boolean";
    case JCC::Parser::token::T_INT:
        return "int";
    case JCC::Parser::token::T_VOID:
        return "void";
    case JCC::Parser::token::T_IF:
        return "if";
    case JCC::Parser::token::T_ELSE:
        return "else";
    case JCC::Parser::token::T_WHILE:
        return "while";
    case JCC::Parser::token::T_BREAK:
        return "break";
    case JCC::Parser::token::T_RETURN:
        return "return";

    case JCC::Parser::token::T_CESC_B:
        return "\\b";
    case JCC::Parser::token::T_CESC_F:
        return "\\f";
    case JCC::Parser::token::T_CESC_T:
        return "\\t";
    case JCC::Parser::token::T_CESC_R:
        return "\\r";
    case JCC::Parser::token::T_CESC_N:
        return "\\n";
    case JCC::Parser::token::T_CESC_APOST:
        return "\\'";
    case JCC::Parser::token::T_CESC_SLASH:
        return "\\\\";
    case JCC::Parser::token::T_CESC_QUOT:
        return "\\\"";

    case JCC::Parser::token::T_ADD:
        return "+";
    case JCC::Parser::token::T_SUB:
        return "-";
    case JCC::Parser::token::T_DIV:
        return "/";
    case JCC::Parser::token::T_MULT:
        return "*";
    case JCC::Parser::token::T_MOD:
        return "%";
    case JCC::Parser::token::T_LT:
        return "<";
    case JCC::Parser::token::T_GT:
        return ">";
    case JCC::Parser::token::T_LTE:
        return "<=";
    case JCC::Parser::token::T_GTE:
        return ">=";
    case JCC::Parser::token::T_ASSIGN:
        return "=";
    case JCC::Parser::token::T_EQUAL:
        return "==";
    case JCC::Parser::token::T_NEQUAL:
        return "!=";
    case JCC::Parser::token::T_NOT:
        return "!";
    case JCC::Parser::token::T_AND:
        return "&&";
    case JCC::Parser::token::T_OR:
        return "||";

    case JCC::Parser::token::T_LPARA:
        return "(";
    case JCC::Parser::token::T_RPARA:
        return ")";

    case JCC::Parser::token::T_LBRACE:
        return "{";
    case JCC::Parser::token::T_RBRACE:
        return "}";

    case JCC::Parser::token::T_SEMICOLON:
        return ";";
    case JCC::Parser::token::T_COMMA:
        return ",";

    case JCC::Parser::token::T_ERR:
        return "ERROR";

    case JCC::Parser::token::T_EOF:
        return "EOF";
    default:
        return "";
    }
}