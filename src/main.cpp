// This file was inspired and based on the tutorial made by my TA Shankar.
// The source code for the tutorial can be found here : https://pages.cpsc.ucalgary.ca/~sankarasubramanian.g/411/

#include "header.h"
#include "driver.hpp"
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

    Driver *driver = new Driver(&inputfile);

    //Parse and Lex to make AST
    bool astFail = driver -> createAST(inputfile);

    if(astFail == true)
    {
        return EXIT_FAILURE;
    }
    //Semantic Analysis
    driver -> analyze();
    


    if (inputfile.is_open()) inputfile.close();


    return EXIT_SUCCESS;
}