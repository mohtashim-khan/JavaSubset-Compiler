#include "header.h"
#include <fstream>
#include <cstdlib>
#include <iostream>
#include <cerrno>

int main(int argc, char *argv[])
{
    // Check for correct amount of CLI arguments
    if (argc != 2)
    {
        std::cout << "Incorrect Amount of Command Line Arguments\n";
        return EXIT_FAILURE;
    }

    // Open provided CLI argument file
    std::fstream inputfile;
    inputfile.open(argv[1], std::ios::in);

    // Check if opened succesfully
    if (!inputfile.is_open())
    {
        std::cerr << "FAILED TO OPEN FILE: " << argv[1] << "\n";
        return EXIT_FAILURE;
    }

    // Initialize Lexer
    auto lexer = new Lexer(&inputfile);

    // Get First Token
    Token token = lexer->lex();

    // Print out all tokens until EOF including Line # and the Lexeme content
    while (token != Token::T_EOF)
    {
        std::cout << "Line: " << lexer->getLine() << ", Token: [" << getName(token) << "], Lexeme: [" << lexer->getLexeme() << "]\n";
        token = lexer->lex();

        if (lexer->getWarnings() > 10)
        {
            std::cerr << "TOO MANY WARNINGS, PROGRAM EXITING \n";
            return EXIT_FAILURE;
        }
    }

    return EXIT_SUCCESS;
}