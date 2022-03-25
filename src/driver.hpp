#ifndef DRIVER_HPP
#define DRIVER_HPP

#include <string> 
#include "header.h"
#include "Node.hpp"
#include "../parser.tab.hh"
#include <fstream>
#include <memory>



class Driver {
    public:

    Driver(std::fstream* inputFil);

    ~Driver();

    // Will start the compilation of the file
    bool start(std::fstream &in);

    // Stores AST. Parser will fill this.
    Node* tree = nullptr;


    // Makes it easy to debug. Parser will set this as yylex.
    // getToken will then actually call yylex, print out the token if needed and returns the token
    // No modification of the token or it's attribute should be done here.
    int getToken(JCC::Parser::semantic_type *yylval, JCC::Parser::location_type *location);

    private:
    std::fstream* inputFile;
    
    bool parse(std::fstream &in);
    std::unique_ptr<JCC::Parser> parser{nullptr};
    std::unique_ptr<Lexer> lexer{nullptr};

};

#endif