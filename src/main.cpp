#include "header.h"

int main(int argc, char *argv[])
{

    std::cout << "Arguments: ";
    for (int i = 1; i < argc; i++)
    {
        std::cout<< argv[i] << " ";
    }

    return 0;
}