#include "header.h"

int main(int argc, char *argv[])
{
    //Check for correct amount of CLI arguments
    if (argc != 2)
    {
        std::cout << "Incorrect Amount of Command Line Arguments\n";
        return -1;
    }

    //Open File to read
    std::fstream inputfile(argv[1], std::ios::in);
    inputfile.open(argv[1]);
    
    //Check if file found
    if (!inputfile.is_open())
    {
        std::cerr << "FILE NOT FOUND \n";
        return -1;
    }



    return 0;
}