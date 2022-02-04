#include "header.h"

inline char const *getName(Token token)
{
    switch (token)
    {
    case Token::T_ID:
        return "id";
    case Token::T_NUM:
        return "number";

    case Token::T_STRING:
        return "string";
    case Token::T_TRUE:
        return "true";
    case Token::T_FALSE:
        return "false";
    case Token::T_BOOLEAN:
        return "boolean";
    case Token::T_INT:
        return "int";
    case Token::T_VOID:
        return "void";
    case Token::T_IF:
        return "if";
    case Token::T_ELSE:
        return "else";
    case Token::T_WHILE:
        return "while";
    case Token::T_BREAK:
        return "break";
    case Token::T_RETURN:
        return "return";

    case Token::T_CESC_B:
        return "\\b";
    case Token::T_CESC_F:
        return "\\f";
    case Token::T_CESC_T:
        return "\\t";
    case Token::T_CESC_R:
        return "\\r";
    case Token::T_CESC_N:
        return "\\n";
    case Token::T_CESC_APOST:
        return "\\'";
    case Token::T_CESC_SLASH:
        return "\\\\";
    case Token::T_CESC_QUOT:
        return "\\\"";

    case Token::T_ADD:
        return "+";
    case Token::T_SUB:
        return "-";
    case Token::T_DIV:
        return "/";
    case Token::T_MULT:
        return "*";
    case Token::T_MOD:
        return "%";
    case Token::T_LT:
        return "<";
    case Token::T_GT:
        return ">";
    case Token::T_LTE:
        return "<=";
    case Token::T_GTE:
        return ">=";
    case Token::T_ASSIGN:
        return "=";
    case Token::T_EQUAL:
        return "==";
    case Token::T_NEQUAL:
        return "!=";
    case Token::T_NOT:
        return "!";
    case Token::T_AND:
        return "&&";
    case Token::T_OR:
        return "||";

    case Token::T_LPARA:
        return "(";
    case Token::T_RPARA:
        return ")";

    case Token::T_LBRACE:
        return "{";
    case Token::T_RBRACE:
        return "}";

    case Token::T_SEMICOLON:
        return ";";
    case Token::T_COMMA:
        return ",";

    case Token::T_ERR:
        return "ERROR";

    case Token::T_EOF:
        return "EOF";
    default:
        return "";
    }
}