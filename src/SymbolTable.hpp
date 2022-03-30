#include <vector>
#include <string>
#include <iostream>
#include <unordered_map>
#include "Node.hpp"

#ifndef SYMBOLTABLE_HH
#define SYMBOLTABLE_HH

class SymbolTableEntry
{
public:

    SymbolTableEntry();

};

class SymbolTable
{
public:

    SymbolTable();

    std::unordered_map <std::string, SymbolTableEntry> table;

    SymbolTableEntry lookup(std::string id);

    void defineEntry(std::string id, SymbolTableEntry info);

};

#endif